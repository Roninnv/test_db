#!/bin/sh
# build server and run serever

cd ./backend
go build -o ./bin/server

cd ./bin
./server