#!/bin/sh

createdb test

nim c -d:release --app:lib add.nim

#sudo mkdir /usr/local/lib/postgresql/
sudo cp libadd.so /usr/local/lib/postgresql/

psql test -f add.sql
psql test -f test.sql
