# docker run -ti --name postgresql -v /data/postgresql:/var/lib/postgresql/9.4/main -p 5432:5432 ubuntu:14.04 bash

#Postgresql install and run
echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" | tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
apt-get update
apt-get -y install vim wget
apt-get install postgresql-9.4 postgresql-contrib-9.4
apt-get install -y postgresql-9.4-postgis-2.1
echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.4/main/pg_hba.conf
echo "listen_addresses='*'" >> /etc/postgresql/9.4/main/postgresql.conf
/etc/init.d/postgresql start

#USER postgres
#/etc/init.d/postgresql start \
#    && psql --command "CREATE USER <username> WITH SUPERUSER PASSWORD 'password';" \
#    && createdb -O <username> <databases>

# docker run -ti --name postgresql -v /data/postgresql:/var/lib/postgresql/9.4/main -p 5432:5432 soft/postgresql bash

psql -h <ip address> -p 5432 -U <username> <databases>
