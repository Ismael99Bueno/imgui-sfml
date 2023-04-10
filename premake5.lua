project "imgui-sfml"
   language "C++"
   cppdialect "C++17"
   
   kind "StaticLib"
   staticruntime "off"
   defines "GL_SILENCE_DEPRECATION"

   targetdir("bin/" .. outputdir)
   objdir("build/" .. outputdir)

   files {"src/**.cpp", "include/**.h"}

   includedirs "../**/include"
