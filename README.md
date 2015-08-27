# RPM Repository

A simple RPM repository container. You can push new artifacts to this service by using git. 
A post-receive hook will update the repository directory which is served by nginx.

Simply run
```bash
docker run -p 8080:80 -p 9418:9418 -v `pwd`/data:/data ulrichschreiner/rpmrepository 
```
and you can `git clone git://localhost/repo` (if you already have a git-daemon running on port 9418
remap it to another port). The current version only creates indices for `x86_64` and `i386` subdirectories.
Add/Change/Remove files by push'ing to the git repository. Every push update's the indices.

Your RPM repository is hosted on `http://localhost:8080/repo`.

**Don't use this in production**

