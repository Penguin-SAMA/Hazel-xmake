target("Sandbox")

add_rules("hazel.common")
set_kind("binary")

add_files("src/**.cpp")
add_deps("Hazel")

if is_plat("linux") then
	add_rpathdirs("$ORIGIN")
end

target_end()
