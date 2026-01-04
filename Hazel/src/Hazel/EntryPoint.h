#pragma once

#include "Hazel.h"

int main(int argc, char** argv) {
    auto app = Hazel::CreateApplication();
    app->Run();
    delete app;
    return 0;
}
