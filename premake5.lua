project "imgui-sfml"
   language "C++"
   cppdialect "C++17"
   filter "system:macosx"
      buildoptions {"-Wall", "-Wextra", "-Wpedantic", "-Wconversion", "-Wno-unused-parameter"}
   filter{}
   
   staticruntime "off"
   kind "StaticLib"
   defines "GL_SILENCE_DEPRECATION"

   targetdir("bin/" .. outputdir)
   objdir("build/" .. outputdir)

   files {"src/**.cpp", "include/**.h"}

   includedirs "../**/include"

   filter "system:macosx"
      defines "RENDER_DRAW_LISTS"
