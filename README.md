Docker Quagga
==================

```sh
docker build -t zebra .
docker run -ti --rm --privileged zebra
service quagga start
telnet localhost 2604
#password is zebra
```

SOME TIPS
==================

```sh
#network
git clone https://github.com/jpetazzo/pipework.git
pipework/pipework br1 <process> <IP/MASK>
#delete network
ip link delete br**
ip link delete veth**
```


