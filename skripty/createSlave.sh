#!/bin/sh

# example:
# ./createSlave.sh 9.1 slave-2 6666

set -x
version=$1
name=$2
port=$3

datadir=/var/lib/postgresql/$version/$name
configdir=/etc/postgresql/$version/$name
socketdir=/var/run/postgresql/$version/$name

if [ "$version" = '9.3' ]
then
  mainPort=5436
else 
  mainPort=5432
fi

rm -fR $datadir $configdir $socketdir
psql -U postgres -p $mainPort -h localhost -c "SELECT pg_start_backup('x',true);"
cp -R /etc/postgresql/$version/main $configdir
cp -R /var/lib/postgresql/$version/main $datadir
psql -U postgres -p $mainPort -h localhost -c "SELECT pg_stop_backup();"

sed "s|__DATADIR__|$datadir|g" /home/market/bin/templates/$version/postgresql.conf | \
sed "s|__SOCKETDIR__|$socketdir|g" | \
sed "s|__PORT__|$port|g" | \
sed "s|__CONFIGDIR__|$configdir|g" > $configdir/postgresql.conf

rm $datadir/postmaster.pid
cp /home/market/bin/templates/$version/recovery.conf $datadir 
mkdir -p $socketdir
chown postgres $socketdir
chown -R postgres:postgres $datadir
chmod 644 $configdir/*
