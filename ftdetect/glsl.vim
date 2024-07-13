" Language: OpenGL Shading Language with GL_KHR_vulkan_glsl.
" Maintainers: Sergey Tikhomirov  <sergey@tikhomirov.io>
"              Erik S. V. Jansson <caffeineviking@gmail.com>

" Extensions supported by Khronos reference compiler (with one exception, ".glsl")
" https://github.com/KhronosGroup/glslang
autocmd! BufNewFile,BufRead *.vert,*.tesc,*.tese,*.glsl,*.geom,*.frag,*.comp,*.rayg,*.rayi,*.raya,*.rayh,*.raym,*.rayc,*.mesh,*.task set filetype=glsl

" vim:set sts=2 sw=2 :
