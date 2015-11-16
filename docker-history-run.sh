docker run -d --net=none -p=9000:80 \
  --name nginx_none nginx

docker run -ti --net=container:nginx_none \
  --name alpine \
  alpine sh

docker run -d --net=bridge -p=9001:80 \
  --name nginx_bridge nginx

docker run -ti --net=container:nginx_bridge \
  --name alpine_bridge \
  alpine sh

docker run -d --net=host -p=9002:80 \
  --name nginx_host nginx
