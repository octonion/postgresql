#!/bin/sh

createdb test

gcc -fPIC -I`pg_config --includedir-server` -c funcs.c
gcc -shared -o funcs.so funcs.o

sudo mkdir /usr/local/lib/postgresql/
sudo cp funcs.so /usr/local/lib/postgresql/

psql test -f funcs.sql
psql test -f check.sql
