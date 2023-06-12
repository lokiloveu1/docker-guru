#check current svc running on port 8080
sudo lsof -i :8080

#mapping port 8080 from local machine to container
docker run -p 8080:8080 loki/simpleweb:1.0.0

> @ start /
> node index.js

Listening on port 8080


#specify a work dir in Dockerfile
'''
WORKDIR /usr/app
'''

docker exec -it 5455988551e1 sh
/usr/app # ls
Dockerfile         node_modules       package.json
index.js           package-lock.json
/usr/app # cd
~ # ls
~ # cd /
/ # ls
bin    home   mnt    root   srv    usr
dev    lib    opt    run    sys    var
etc    media  proc   sbin   tmp
/ # 
