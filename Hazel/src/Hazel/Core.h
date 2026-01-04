#pragma once

#if defined(HZ_PLATFORM_WINDOWS)
#if defined(HZ_BUILD_DLL)
#define HAZEL_API __declspec(dllexport)
#else
#define HAZEL_API __declspec(dllimport)
#endif
#else
#if defined(HZ_BUILD_DLL)
#define HAZEL_API __attribute__((visibility("default")))
#else
#define HAZEL_API
#endif
#endif
