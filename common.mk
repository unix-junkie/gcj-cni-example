JAVA_HOME = /usr/lib/jvm/zulu8
GCC_PREFIX = /opt/gcc64/6.5
GCJ_VERSION = 6.5.0
JAVA_SOURCE = 1.5
JAVA_TARGET ?= $(JAVA_SOURCE)

CXX = $(GCC_PREFIX)/bin/g++
GCJ = $(GCC_PREFIX)/bin/gcj
GCJH = $(GCC_PREFIX)/bin/gcjh
GIJ = $(GCC_PREFIX)/bin/gij

# We may have no ECJ in PATH/CLASSPATH, hence we delegate Java compilation to `javac` 1.8.
JAVAC = $(JAVA_HOME)/bin/javac
JAVACFLAGS = -Xlint:-options -Xbootclasspath:$(GCC_PREFIX)/share/java/libgcj-$(GCJ_VERSION).jar -source $(JAVA_SOURCE) -target $(JAVA_TARGET)

CXXFLAGS =
GCJFLAGS = -pie -fPIE -save-temps
NATIVE_LDFLAGS = -L$(GCC_PREFIX)/lib64 -Wl,-rpath=$(GCC_PREFIX)/lib64
NATIVE_LDLIBS = -lstdc++
AOT_LDFLAGS = $(NATIVE_LDFLAGS) -L. -Wl,-rpath='$$ORIGIN'
AOT_LDLIBS = $(NATIVE_LDLIBS) -lgcj -lfoo

.DEFAULT_GOAL = all

.PHONY: all clean run

%.class: %.java
	$(JAVAC) $(JAVACFLAGS) $<

%.h: %.class
	$(GCJH) $(GCJHFLAGS) -classpath . $*

Main-library.o: Main-library.cc Main.h
	$(CXX) $(CXXFLAGS) -fPIC -c -o $@ $<

Main.o: Main.class
	$(GCJ) $(GCJFLAGS) -c -o $@ $<

libfoo.so: Main-library.o
	$(CXX) -fPIC -shared -o $@ $(NATIVE_LDFLAGS) $(NATIVE_LDLIBS) $<

clean:
	$(RM) -f .*~ *~ *.so *.o *.s *.i *.ii *.class Main.h cni-*-native jni-*-native
