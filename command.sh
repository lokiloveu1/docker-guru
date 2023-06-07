# run docker image hello-word
(sudo) docker run hello-world

docker run busybox ls
'''
bin
dev
etc
home
lib
lib64
'''

docker run busybox ping google.com
'''
PING google.com (172.217.167.78): 56 data bytes
64 bytes from 172.217.167.78: seq=0 ttl=37 time=3.754 ms
64 bytes from 172.217.167.78: seq=1 ttl=37 time=6.856 ms
64 bytes from 172.217.167.78: seq=2 ttl=37 time=5.541 ms
'''

docker ps
'''
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
e811586832ce        busybox             "ping google.com"   23 seconds ago      Up 22 seconds                           exciting_fermat
'''
