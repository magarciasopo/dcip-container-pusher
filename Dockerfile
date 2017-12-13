FROM dockerhub.hi.inet/dcip/minimal:7

RUN yum -y update \
 && yum -y install docker  rh-python36 \
 && yum clean all && rm -rf /var/cache/yum

#Para ejecutar para desarrollo necesita crear un contenedor que use este como FROM y que haga...
#RUN yum -y install byobu curl wget sudo bash-completion less git bash bind-utils
#RUN echo "#!/bin/bash" > /opt/startup.sh
#RUN echo "/usr/bin/byobu " >> /opt/startup.sh
#RUN cat /opt/startup.sh

# CA para poder usar artifactory con Docker
#RUN mkdir -v  -p /etc/docker/certs.d/dockerhub.hi.inet &&  cp /home/contint/ISSUECATID.cer /etc/docker/certs.d/dockerhub.hi.inet/ca.crt

# git clone https://github.com/calba/IOMcore.git
#Build
#docker build -f Dockerfile -t tmplbuilder $PWD ; docker tag tmplbuilder tmplbuilder:XXX

#Run
# docker run -it -v /home/calba:/home/calba:rw,z  -v /tmp:/tmp:rw,z -v /home/devel:/home/devel:rw,z  -u contint -w /tmp  tmplbuilder

#Para ejecutar en el contenedor
#. /home/calba/.devTMPLbuild
#cd /home/calba/Dropbox/dSN/engineering-build_ost_template
#./createTemplates.sh /home/calba/rhel-guest-image-7.1-20150224.0.x86_64.qcow2


