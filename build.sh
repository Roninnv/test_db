#!/bin/sh

cd ./backend
go mod tidy

cd db
go build -o ../dist/sql_script