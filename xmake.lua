set_project("Hazel")
set_version("0.1.0")

set_languages("cxx17")

set_targetdir("bin/$(plat)/$(arch)/$(mode)")
set_objectdir("build/.objs/$(plat)/$(arch)/$(mode)/$(target)")

add_rules("mode.debug", "mode.release", "mode.releasedbg")
add_rules("plugin.compile_commands.autoupdate", { outputdir = "." })

rule("hazel.common")
on_load(function(target)
	if is_plat("linux") then
		target:add("defines", "HZ_PLATFORM_LINUX")
		target:add("cxflags", "-fPIC")
		target:add("cxxflags", "-Wall", "-Wextra", "-Wpedantic")
		target:add("syslinks", "dl", "pthread")
	end

	if is_mode("debug") then
		target:add("defines", "HZ_DEBUG")
		target:add("cxflags", "-g")
	else
		target:add("defines", "HZ_RELEASE")
	end
end)
rule_end()

includes("Hazel")
includes("Sandbox")
