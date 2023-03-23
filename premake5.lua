project "imgui-sfml"
   language "C++"
   cppdialect "C++20"
   staticruntime "on"
   kind "StaticLib"
   defines "GL_SILENCE_DEPRECATION"

   targetdir("../bin/" .. outputdir)
   objdir("../build/" .. outputdir .. "/%{prj.name}")

   files {"src/**.cpp", "include/**.h"}

   includedirs {"../**/include", "/opt/homebrew/Cellar/sfml/2.5.1_2/include"}
