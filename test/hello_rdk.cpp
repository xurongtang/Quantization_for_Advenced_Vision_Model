// hello_rdk.cpp
#include <iostream>
#include <cstdio>

int main() {
    std::cout << "Hello from RDK X5!" << std::endl;
    std::printf("Compiled for ARM64 on %s\n", __DATE__);
    return 0;
}