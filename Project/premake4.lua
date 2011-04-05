solution "MicroRacers"
	configurations { "Debug", "DebugOpt", "Release", "Retail" }
--	platforms { "Native", "x32", "x64", "Xbox360", "PS3" }
--	platforms { "Native", "Xbox" }
	platforms { "Native", "x32", "x64" }

	-- include the fuji project...
	dofile  "../../Fuji/Fuji/Private/Project/fujiproj.lua"

	project "MicroRacers"
		kind "WindowedApp"
		language "C++"
		files { "../Source/**.h", "../Source/**.cpp" }

		includedirs { "../Source/" }
		objdir "../Build/"
		targetdir "../"

		flags { "StaticRuntime", "NoExceptions", "NoRTTI", "WinMain" }

		links { "Fuji" }

		dofile "../../Fuji/Fuji/Public/Project/fujiconfig.lua"
