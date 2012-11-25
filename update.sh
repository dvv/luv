#!/bin/sh

#
# merge project $1 hosted at $2 under $3 subdirectory of current repo
#
# use it both to add and to update dependency
#

make_dep() {
  git remote add -t master -m master "$1" "$2"
  git fetch --no-tags "$1"
  git read-tree --prefix="${3:-deps/$1}/" -u "$1/master"
  git merge -s subtree --squash --no-commit "$1/master"
  git commit -m "merge $1 as our subdirectory"
}

#
# pull dependencies in subtree
#

make_dep libuv git://github.com/joyent/libuv libuv

