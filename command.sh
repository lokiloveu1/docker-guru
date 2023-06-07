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

docker ps --all
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS               NAMES
e811586832ce        busybox             "ping google.com"        5 minutes ago       Exited (0) 25 seconds ago                       exciting_fermat
76d140d225ca        busybox             "ls"                     5 minutes ago       Exited (0) 5 minutes ago                        festive_fermi
8ee276dcf990        hello-world         "ls"                     8 minutes ago       Created                                         gifted_fermi
abc48848d0ee        hello-world         "/hello"                 10 minutes ago      Exited (0) 10 minutes ago                       elated_brown

#docker run = docker create + docker start

docker create busybox
bbd3cca472130cf3e109d4c82df10a041f4dfaaeb87ce4daa4f1b15d30d3809e

docker start -a bbd3cca472130cf3e109d4c82df10a041f4dfaaeb87ce4daa4f1b15d30d3809e

docker ps --all
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS               NAMES
bbd3cca47213        busybox             "sh"                     6 minutes ago       Exited (0) 6 minutes ago                        sharp_sanderson
e811586832ce        busybox             "ping google.com"        24 minutes ago      Exited (0) 19 minutes ago                       exciting_fermat
76d140d225ca        busybox             "ls"                     25 minutes ago      Exited (0) 25 minutes ago                       festive_fermi
8ee276dcf990        hello-world         "ls"                     27 minutes ago      Created                                         gifted_fermi
abc48848d0ee        hello-world         "/hello"                 29 minutes ago      Exited (0) 29 minutes ago                       elated_brown
234815cf042c        busybox             "ls"                     29 minutes ago      Exited (0) 29 minutes ago                       unruffled_wing
5b475aeef9b3        hello-world         "echo hi there"          30 minutes ago      Created                                         boring_curran
85d2eab9964e        busybox             "echo hi you"            31 minutes ago      Exited (0) 31 minutes ago                       happy_nightingale
4b7b9189d0de        busybox             "echo hi there"          31 minutes ago      Exited (0) 31 minutes ago                       keen_bhaskara
c1ff5e962fc3        hello-world         "/hello"                 2 hours ago         Exited (0) 2 hours ago                          pensive_bohr
0db703c8a6d0        ubuntu:15.10        "chown bin install.l…"   4 years ago         Exited (1) 4 years ago                          hungry_wozniak
33edaab5eabe        ubuntu:15.10        "/bin/bash"              4 years ago         Exited (0) 4 years ago                          recursing_cartwright
32593d7b83fb        ubuntu:15.10        "/bin/sh -c 'while t…"   4 years ago         Exited (137) 4 years ago                        stupefied_yonath
d4ab672cf299        ubuntu:15.10        "/bin/bash"              4 years ago         Exited (127) 4 years ago                        frosty_haibt
e293dfdccec4        ubuntu:15.10        "/bin/echo 'Hello wo…"   4 years ago         Exited (0) 4 years ago                          gracious_shaw

#restart a stopped container by using container ID
docker start -a bbd3cca47213

#can only restart a container with default command
docker start -a bbd3cca47213 echo hi
you cannot start and attach multiple containers at once

#remove stopped container
docker system prune
WARNING! This will remove:
  - all stopped containers
  - all networks not used by at least one container
  - all dangling images
  - all dangling build cache

Are you sure you want to continue? [y/N] y
Deleted Containers:
bbd3cca472130cf3e109d4c82df10a041f4dfaaeb87ce4daa4f1b15d30d3809e
e811586832ce741628ed0861ab1c15600fc05b33b09755a2c708c0f66bff0410
76d140d225ca78e72bebe9d066e83a78cf9a2af99bb15f0f9307eeb2cd1febd1
8ee276dcf990fa2ef2e78d9f6db616d465e504a1945fd43bf2fe5814479e7c08
abc48848d0ee4011c58e083ab75415a97b7e5dd00d196793b8ea9338bf6a1260
234815cf042cb6540e6262ea413eda22f6558f5ec904c29a0262de0d8d32dc54
5b475aeef9b30f32a541cbadcb61239422ff8563a732764d731913465bd7f5e0
85d2eab9964ecbbee38d138512033c5ec4ecb1286a6f5a59f29d66cb7fcdd158
4b7b9189d0de2184087b2745bc9ecf894adea3df092e09d468386d1d8cb8621d
c1ff5e962fc3de44a5f3b436e8a0c545a9c625475a5fb3a76946239b49fc2b9c
0db703c8a6d0064d034b6c92600be36b366bb3545154a1a28089a782973588b4
33edaab5eabe3ef833bfc430f45b64e0eee98b7b4f19c053e49fa40d75d7a019
32593d7b83fb4b2677754711b6972aa1a2358a37ecc9df1f3254803b251a4ab4
d4ab672cf299f90df7c70aaaef8319126cb56600dded054f2346404b764fa4b1
e293dfdccec4c83fb5448deb4674e936fd6856da4570b22549a8f56940f40b52

Total reclaimed space: 108B

#container logs
docker logs f71826dfd5d7e50a180547ec84399bd4fe6c8f0a1b32fc536ef397a138b2a375(container ID)
hihihi

docker logs e0fa1c0d8cb9
PING google.com (142.250.66.238): 56 data bytes
64 bytes from 142.250.66.238: seq=0 ttl=37 time=4.595 ms
64 bytes from 142.250.66.238: seq=1 ttl=37 time=7.057 ms
64 bytes from 142.250.66.238: seq=2 ttl=37 time=5.438 ms
64 bytes from 142.250.66.238: seq=3 ttl=37 time=6.977 ms
64 bytes from 142.250.66.238: seq=4 ttl=37 time=5.999 ms
64 bytes from 142.250.66.238: seq=5 ttl=37 time=6.224 ms
64 bytes from 142.250.66.238: seq=6 ttl=37 time=6.088 ms
64 bytes from 142.250.66.238: seq=7 ttl=37 time=6.351 ms
64 bytes from 142.250.66.238: seq=8 ttl=37 time=6.561 ms
64 bytes from 142.250.66.238: seq=9 ttl=37 time=6.369 ms
64 bytes from 142.250.66.238: seq=10 ttl=37 time=4.009 ms
64 bytes from 142.250.66.238: seq=11 ttl=37 time=3.823 ms
64 bytes from 142.250.66.238: seq=12 ttl=37 time=4.494 ms
64 bytes from 142.250.66.238: seq=13 ttl=37 time=6.089 ms
64 bytes from 142.250.66.238: seq=14 ttl=37 time=4.899 ms
64 bytes from 142.250.66.238: seq=15 ttl=37 time=4.698 ms
64 bytes from 142.250.66.238: seq=16 ttl=37 time=5.132 ms
64 bytes from 142.250.66.238: seq=17 ttl=37 time=4.995 ms
64 bytes from 142.250.66.238: seq=18 ttl=37 time=6.957 ms
64 bytes from 142.250.66.238: seq=19 ttl=37 time=6.376 ms
64 bytes from 142.250.66.238: seq=20 ttl=37 time=6.563 ms
64 bytes from 142.250.66.238: seq=21 ttl=37 time=6.184 ms
64 bytes from 142.250.66.238: seq=22 ttl=37 time=4.779 ms
64 bytes from 142.250.66.238: seq=23 ttl=37 time=8.709 ms
64 bytes from 142.250.66.238: seq=24 ttl=37 time=7.242 ms

#stop a container
docker stop e0fa1c0d8cb9

#kill a container.  
#stop can allow safe termination (within the grace period) while kill terminates immediately. A container that is in the created state or stopped can be removed with docker rm
docker kill e0fa1c0d8cb9


