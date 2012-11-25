package = "luv"
version = "scm-1"
source = {
  url = "git://github.com/dvv/luv.git"
}
description = {
  summary  = "Luv",
  detailed = "",
  homepage = "http://github.com/creationix/luv",
  license  = "MIT",
}
dependencies = {
    "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    luv = {
      sources = {
        "common.c",
        "luv_functions.c",
        "luv.c"
      },
      defines = {
        "LUV_STACK_CHECK=1",
        "_LARGEFILE_SOURCE",
        "_FILE_OFFSET_BITS=64"
      },
      libraries = { "uv", "m", "pthread", "rt" },
      incdirs = {"libuv/include"},
      libdirs = {"libuv"},
    }
  },
}
