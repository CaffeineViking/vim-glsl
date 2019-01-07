# vim-glsl

This plugin provides Vim syntax highlighting for the OpenGL Shading Language (GLSL) along with the extra `GL_KHR_vulkan_glsl` Vulkan syntax. It also adds support for `#include` directives, since those are also available in `glslc`. It also includes missing keywords and features which were "forgotten" in tikhomirov's fork, like the `subroutine` and `component` keywords. If you find any missing keywords, please open a GitHub issue or create a PR and I'll get to work. It will automatically add syntax highlighting for files with extensions supported by [glslang](https://github.com/KhronosGroup/glslang): `.glsl`, `.vert`, `.tesc`, `.tese`, `.geom`, `.frag`, and `.comp`. If you (for some reason) want to support highlighting in files with other extensions (e.g. `.vs` or `.fs`) you can do so by using [autocommand](http://vimdoc.sourceforge.net/htmldoc/autocmd.html#:autocmd):


```viml
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
```

## Supported GLSL Versions

- OpenGL Shading Language: all versions from 1.10 to 4.50
- OpenGL ES Shading Language: versions 1.00 and 3.00
- The Vulkan extensions found in `GL_KHR_vulkan_glsl` too!

## Installation

#### Using [Vundle](https://github.com/gmarik/vundle)

Add this to your `vimrc`:

```viml
Plugin 'CaffeineViking/vim-glsl'
```

Then reload your `vimrc` and run `:PluginInstall`.

#### Using [Pathogen](https://github.com/tpope/vim-pathogen)

```sh
$ cd ~/.vim/bundle
$ git clone https://github.com/CaffeineViking/vim-glsl
```

Then run `:Helptags` to generate help tags.

#### Manual Installation

Copy all files to your `$HOME/.vim` (`$HOME\vimfiles\` on Windows) directory.
