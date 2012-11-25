package = "luv"
version = "scm-1"
source = {
  url = "git://github.com/dvv/luv.git",
  branch = "bundle"
}
description = {
  summary  = "Luv",
  detailed = "",
  homepage = "http://github.com/creationix/luv",
  license  = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
  type = "make",
  install_variables = {INSTALL_CMOD = "$(LIBDIR)"}
}
