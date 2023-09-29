include ../common.mk

GCJFLAGS += -fjni
GCJHFLAGS = -jni

all: jni-dynamic-native

jni-dynamic-native: Main.o libfoo.so
	$(GCJ) $(GCJFLAGS) --main=Main -o $@ $(AOT_LDFLAGS) $(AOT_LDLIBS) $<

run: jni-dynamic-native
	./$<
