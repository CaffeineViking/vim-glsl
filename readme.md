# vim-glsl

This plugin adds OpenGL Shading Language (GLSL) syntax highlighting support to Vim. It supports everything in the standard GLSL 4.6 plus a few common KHR/EXT extensions. Among other things, it supports the `GL_KHR_vulkan_glsl` extension for Vulkan. It also highlights `#include` directives, which are widely used (even if they're technically non-standard). It fixes a few issues with tikhomirov's repository, such as the missing `subroutine` and `component` keywords that should be available in GLSL (even if they aren't used that much).

If you find anything important missing, feel free to open an issue or (even better) create a PR. Please be aware that no vendor extensions will be accepted into this repository. If they're EXT or KHR extensions though, they are more than welcome! Please see the public [GLSL extensions](https://github.com/KhronosGroup/GLSL/tree/master/extensions) repo.

It applies syntax highlighting to the following [glslang](https://github.com/KhronosGroup/glslang) file extensions: `.glsl`, `.vert`, `.tesc`, `.tese`, `.geom`, `.frag`, `.comp`, `.rayg`, `.rayi`, `.raya`, `.rayh`, `.raym` (from `GL_EXT_ray_tracing`). `.mesh` will also be supported once/if we get a KHR/EXT extension for mesh shading :-)

## Supported GLSL Versions

* OpenGL Shading Language: all versions from 1.10 to 4.60
    * Added missing `component` layout qualifier
    * Added missing `subroutine` from GLSL 4.6
* OpenGL ES Shading Language: versions 1.00 and 3.00 (?)
* The Vulkan GLSL extensions found in `GL_KHR_vulkan_glsl`:
    * `shaderc`-style `#include` directives
    * `constant_id` and `push_constant` layout qualifiers
    * `gl_VertexIndex` and `gl_InstanceIndex`
    * Ability to specify descriptor sets with `set` qualifier
    * Support for the various `subpassInput` descriptors
    * Ability to speicfy `input_attachment_index` in layout
    * The `subpassLoad` built-in function for Vulkan
    * Both the `imageBuffer` and `textureBuffer` descriptors
    * And finally `sampler` and `samplerShadow`
* The following official [KHR/EXT extensions](https://github.com/KhronosGroup/GLSL/tree/master/extensions) from Khronos:
    * `GL_KHR_memory_scope_semantics`
    * `GL_KHR_shader_subgroup`
    * `GLSL_EXT_fragment_shading_rate`
    * `GLSL_EXT_ray_flags_primitive_culling`
    * `GLSL_EXT_ray_query`
    * `GLSL_EXT_ray_tracing`

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
