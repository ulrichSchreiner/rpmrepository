from centos:7
maintainer ulrich.schreiner@gmail.com

add nginx.repo /etc/yum.repos.d/nginx.repo
run yum -y install createrepo git nginx git-daemon
volume /data
run mkdir /src
add makerepo.sh /src/makerepo.sh
add updaterepo.sh /src/updaterepo.sh
add startup.sh /src/startup.sh
add repository.conf /etc/nginx/conf.d/repository.conf
run rm /etc/nginx/conf.d/default.conf

cmd /src/startup.sh
