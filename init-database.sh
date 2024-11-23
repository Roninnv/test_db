#!/bin/sh
# build sql-script and run the sql-script for init

cd ./backend
go mod tidy

cd db_script
go build -o ../bin/sql_script

cd ..
cp -r ./db ./bin
cp ./db_script/database_config.yaml ./bin

cd ./bin
./sql_script