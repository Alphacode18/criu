#!/bin/bash
set -e
make clean
make 
make install

rm /usr/sbin/criu
cp /usr/local/sbin/criu /usr/sbin/criu

ls -lha /usr/sbin/criu
ls -lha /usr/local/sbin/criu

criu -V
