target("Hazel")

add_rules("hazel.common")
set_kind("shared")

add_defines("HZ_BUILD_DLL")

add_includedirs("src", { public = true })
add_includedirs("../Hazel/vendor/spdlog/include", { public = true })
add_files("src/**.cpp")
add_headerfiles("src/**.h", "src/**.hpp")

target_end()
