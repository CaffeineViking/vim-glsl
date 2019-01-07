" Language: OpenGL Shading Language with GL_KHR_vulkan_glsl.
" Maintainers: Sergey Tikhomirov  <sergey@tikhomirov.io>
"              Erik S. V. Jansson <caffeineviking@gmail.com>

syn include @GLSL syntax/glsl.vim
syn region ShaderScript
      \ start="<script [^>]*type=\('\|\"\)x-shader/x-\(vertex\|fragment\)\('\|\"\)[^>]*>"
      \ keepend
      \ end="</script>"me=s-1
      \ contains=@GLSL,htmlScriptTag,@htmlPreproc
