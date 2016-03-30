# sudo docker run -it -v /data/redis:/redis-2.8.24 --name redis ubuntu:14.04 bash

# install redis
apt-get update
apt-get install -y vim build-essential wget make
wget http://download.redis.io/releases/redis-2.8.24.tar.gz
tar xvzf redis-2.8.24.tar.gz
cd redis-2.8.24
make
make install
redis-server &

# sudo docker run -it -v /data/redis:/redis-2.8.24 --name redis redis bash
