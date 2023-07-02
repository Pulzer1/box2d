project "box2d"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("bin/" .. outputdir)
	objdir ("bin-int/" .. outputdir)

	files {
		"src/**.cpp",
		"src/**.h",
		"include/**.h"
	}

	includedirs {
		"include"
	}

	defines {
		"_CRT_SECURE_NO_WARNINGS",
	}


	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "system:windows"
		systemversion "latest"


	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "on"