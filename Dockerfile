FROM debian
MAINTAINER SYA-KE

RUN apt-get update -y && apt-get install -y quagga vim telnet net-tools && apt-get clean
RUN for f in /usr/share/doc/quagga/examples/*;do cp $f /etc/quagga/`basename ${f%.sample}`;done
RUN sed s/ospfd=no/ospfd=yes/ -i /etc/quagga/daemons
RUN sed s/zebra=no/zebra=yes/ -i /etc/quagga/daemons

ENTRYPOINT ["/bin/bash"]
