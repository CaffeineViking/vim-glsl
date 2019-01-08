# vim-glsl

This plugin provides Vim syntax highlighting for the OpenGL Shading Language (GLSL) along with the `GL_KHR_vulkan_glsl` Vulkan syntax. It also adds support for `#include` directives, since those are also available in `glslc`. It also includes missing keywords and features which were "forgotten" in tikhomirov's fork, like the `subroutine`, `component` and `sampler` keywords.

If you find any missing keywords, please open a GitHub issue or create a PR and I'll get to work.

It adds syntax highlighting for files with extensions from [glslang](https://github.com/KhronosGroup/glslang): `.glsl`, `.vert`, `.tesc`, `.tese`, `.geom`, `.frag`, and `.comp`.

If you want to support highlighting in files with other extensions (e.g. `.vs` or `.fs`) you can do so by using [autocommand](http://vimdoc.sourceforge.net/htmldoc/autocmd.html#:autocmd):


```viml
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
```

## Supported GLSL Versions

* OpenGL Shading Language: all versions from 1.10 to 4.50
    * Added missing `component` layout qualifier
    * Added missing `subroutine`
* OpenGL ES Shading Language: versions 1.00 and 3.00
* The Vulkan extensions found in `GL_KHR_vulkan_glsl` too:
    * `shaderc`-style `#include` directives
    * `constant_id` and `push_constant` layout qualifiers
    * `gl_VertexIndex` and `gl_InstanceIndex`
    * Ability to specify descriptor sets with `set` qualifier
    * Support for the various `subpassInput` descriptors
    * Ability to speicfy `input_attachment_index` in layout
    * The `subpassLoad` built-in function for Vulkan

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
