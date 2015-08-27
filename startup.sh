#!/bin/sh

/src/makerepo.sh

nginx
git daemon --base-path=/data --export-all --enable=receive-pack --reuseaddr --informative-errors --verbose
