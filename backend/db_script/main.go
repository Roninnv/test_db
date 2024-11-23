package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
	"strings"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var db *gorm.DB
var err error
var logFile *os.File

func init() {
	logFile, err = os.OpenFile("./log/init.log", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		fmt.Println("Failed to create or open log file:", err)
		panic("Unable to initialize log file")
	}
	log.SetOutput(logFile)

	var dsn string = "root:@Faj872@tcp(127.0.0.1:3306)/?charset=utf8mb4&parseTime=True&loc=Local"

	db, err = gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		log.Fatalf("Database connection failure: %v", err)
		panic("Unable to connect to database")
	}
	log.Println("Database connection successful")
}

func executeSQLFromFile(filename string) error {
	content, err := os.ReadFile(filename)
	if err != nil {
		return fmt.Errorf("fileed to read SQL file: %v", err)
	}

	sqlStatements := strings.Split(string(content), ";")

	for _, stmt := range sqlStatements {
		stmt = strings.TrimSpace(stmt)
		if stmt != "" {
			result := db.Exec(stmt)
			if result.Error != nil {
				return fmt.Errorf("failed to execute SQL statement: %v", result.Error)
			}
			log.Println("successfully executed SQL statement:", stmt)
		}
	}

	return nil
}

func ListFiles() {
	root := "./migrations"

	err := filepath.WalkDir(root, func(path string, d os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		fmt.Println("1:" + path)
		return nil
	})

	if err != nil {
		fmt.Printf("Error walking the path %v: %v\n", root, err)
	}
}

func main() {
	defer logFile.Close()

	err := executeSQLFromFile("../db/migrations/202411161001_init.sql")
	if err != nil {
		log.Fatalf("failed to initialize the database: %v", err)
	}

	log.Println("Database initialization succeeded")
	fmt.Println("Database initialization succeeded")
	// ListFiles()
}
