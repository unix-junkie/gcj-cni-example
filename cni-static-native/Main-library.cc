#include <iostream>

#include <gcj/cni.h>
#include <java/lang/UnsupportedOperationException.h>

#include "Main.h"

void Main::foo() {
	std::cout << "Hello from CNI" << std::endl;
}
