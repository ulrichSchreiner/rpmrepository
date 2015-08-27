#!/bin/sh

BASE=/data/www/repo
GIT_WORK_TREE=$BASE git checkout -f

for arch in i386 x86_64
do
  pushd ${BASE}/${arch} >/dev/null 2>&1
  createrepo .
  popd >/dev/null 2>&1
done


