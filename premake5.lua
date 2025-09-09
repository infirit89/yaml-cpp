project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("%{prj.location}/bin/" .. outputdir)
    objdir ("%{prj.location}/bin-int/" .. outputdir)

    files
    {
        "src/**.cpp",
        "src/**.h",

        "src/contrib/**.cpp",
        "src/contrib/**.h",

        "inlcude/**.h",
    }

    includedirs
    {
        "include",
        "src"
    }

    defines
    {
        "YAML_CPP_STATIC_DEFINE"
    }

    filter "system:windows"
        architecture "x86_64"
        systemversion "latest"

    filter "system:macosx"
		architecture "ARM64"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"