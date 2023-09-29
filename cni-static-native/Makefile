include ../common.mk

GCJHFLAGS = -cni

all: cni-static-native

cni-static-native: Main.o Main-library.o
	$(GCJ) $(GCJFLAGS) --main=Main -o $@ $(NATIVE_LDFLAGS) $(NATIVE_LDLIBS) $^

run: cni-static-native
	./$<
