#!/bin/sh

cd ./backend
go mod tidy

cd db_script
go build -o ../bin/sql_script

cd ..
cp -r ./db ./bin
cp ./db_script/database_config.yaml ./bin