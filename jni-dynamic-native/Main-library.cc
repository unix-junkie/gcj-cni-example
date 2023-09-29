#include <iostream>

#include "Main.h"

void Java_Main_foo(JNIEnv *env, jclass) {
	std::cout << "Hello from JNI" << std::endl;
}
