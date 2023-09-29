include ../common.mk

GCJHFLAGS = -jni

all: Main.class libfoo.so

run: all
	LD_LIBRARY_PATH=. $(GIJ) Main
