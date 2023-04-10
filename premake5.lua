project "imgui-sfml"
   language "C++"
   cppdialect "C++17"
   buildoptions {"-Wall", "-Wextra", "-Wpedantic", "-Wconversion", "-Wno-unused-parameter"}
   
   staticruntime "off"
   kind "StaticLib"
   defines "GL_SILENCE_DEPRECATION"

   targetdir("bin/" .. outputdir)
   objdir("build/" .. outputdir)

   files {"src/**.cpp", "include/**.h"}

   includedirs "../**/include"
