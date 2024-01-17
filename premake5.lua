project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    staticruntime "off"
    
    architecture "x86_64"

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
    systemversion "latest"

    filter "configurations:Debug"        
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"