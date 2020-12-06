# vim-glsl

This plugin adds OpenGL Shading Language (GLSL) syntax highlighting support to Vim. It supports everything in the standard GLSL 4.6 plus a few common KHR/EXT extensions. Among other things, it supports the `GL_KHR_vulkan_glsl` extension for Vulkan. It also highlights `#include` directives, which are widely used (even if they're technically non-standard). It fixes a few issues with tikhomirov's repository, such as the missing `subroutine` and `component` keywords that should be available in GLSL (even if they're "rare").

If you find anything important missing, feel free to open an issue or (even better) create a PR. Please be aware that no vendor extensions will be accepted into this repository. If they're EXT or KHR extensions though, they are more than welcome! Please see the public [GLSL extensions](https://github.com/KhronosGroup/GLSL/tree/master/extensions) repo.

It applies syntax highlighting to the following [glslang](https://github.com/KhronosGroup/glslang) file extensions: `.glsl`, `.vert`, `.tesc`, `.tese`, `.geom`, `.frag`, `.comp`, `.rayg`, `.rayi`, `.raya`, `.rayh`, `.raym`, `.rayc` (from `GL_EXT_ray_tracing`). `.mesh` will also be supported once/if we get a KHR/EXT extension for mesh shading.

## Supported

* OpenGL Shading Language: all versions from 1.10 to 4.60
    - [x] Added missing `component` layout qualifier
    - [x] Added missing `subroutine` from GLSL 4.6
* OpenGL ES Shading Language: versions 1.00 and 3.00
* The Vulkan GLSL extensions found in `GL_KHR_vulkan_glsl`:
    - [x] `shaderc`-style `#include` directives
    - [x] `constant_id` and `push_constant` layout qualifiers
    - [x] `gl_VertexIndex` and `gl_InstanceIndex`
    - [x] Ability to specify descriptor sets with `set` qualifier
    - [x] Support for the various `subpassInput` descriptors
    - [x] Ability to speicfy `input_attachment_index` in layout
    - [x] The `subpassLoad` built-in function for Vulkan
    - [x] Both the `imageBuffer` and `textureBuffer` descriptors
    - [x] And finally `sampler` and `samplerShadow`
* The following official KHR/EXT extensions are supported:
    - [x] `GL_KHR_memory_scope_semantics`
    - [x] `GL_KHR_shader_subgroup`
    - [x] `GL_KHR_vulkan_glsl`
    - [x] `GLSL_EXT_fragment_invocation_density`
    - [x] `GLSL_EXT_fragment_shading_rate`
    - [x] `GLSL_EXT_ray_flags_primitive_culling`
    - [x] `GLSL_EXT_ray_query`
    - [x] `GLSL_EXT_ray_tracing`
    - [x] `GLSL_EXT_shader_image_int64`
    - [x] `GL_EXT_control_flow_attributes`
    - [x] `GL_EXT_device_group`
    - [x] `GL_EXT_multiview`
    - [x] `GL_EXT_nonuniform_qualifier`
    - [x] `GL_EXT_scalar_block_layout`
    - [x] `GL_EXT_shader_16bit_storage`
    - [x] `GL_EXT_shader_explicit_arithmetic_types`
    - [x] `GL_EXT_shader_realtime_clock`
    - [x] `GL_EXT_subgroupuniform_qualifier`
* `texture2D` is highlighted as a type instead of a function

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
