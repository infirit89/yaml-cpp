project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++11"
    staticruntime "on"

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
        "MSDFGEN_USE_CPP11"
    }

    filter "system:windows"
    systemversion "latest"

    filter "configurations:Debug"        
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"