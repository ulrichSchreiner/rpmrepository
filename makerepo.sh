#!/bin/sh

REPODIR="/data/repo"
WWWDIR="/data/www/repo"
if [ ! -d "$REPODIR" ]; then
	rm -rf $WWWDIR
	mkdir -p $WWWDIR
	mkdir $REPODIR
	cd $REPODIR
	git init --bare --template /src/layout
	cp -f /src/updaterepo.sh hooks/post-receive
	chmod +x hooks/post-receive
	/src/updaterepo.sh
fi
