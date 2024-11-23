package main

import (
	"fmt"
	"log"
	"os"
	"strings"

	"backend/db_script/lib"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var db *gorm.DB
var err error
var logFile *os.File

func openLogFile() {
	if err := os.MkdirAll("./log", 0755); err != nil {
		log.Fatalf("Failed to create log directory: %v", err)
	}

	logFile, err = os.OpenFile("./log/run.log", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		fmt.Println("Failed to create or open log file:", err)
		panic("Unable to initialize log file")
	}
	log.SetOutput(logFile)
}

func connectDatabase(databaseConfig lib.Config) {
	dsn := fmt.Sprintf(
		"%s:%s@tcp(%s:%d)/?charset=utf8mb4&parseTime=True&loc=Local",
		databaseConfig.Database.Username,
		databaseConfig.Database.Password,
		databaseConfig.Database.Host,
		databaseConfig.Database.Port,
	)

	db, err = gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		log.Fatalf("Database connection failure: %v", err)
		panic("Unable to connect to database")
	}
	log.Println("Database connection successful")
	fmt.Println("Database connection successful")
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

func main() {
	openLogFile()
	defer logFile.Close()

	databaseConfig, err := lib.LoadConfig("./database_config.yaml")
	if err != nil {
		log.Fatalf("Error loading config: %v", err)
	}

	connectDatabase(databaseConfig)

	err = executeSQLFromFile("./db/migrations/warehouse_init.sql")
	if err != nil {
		log.Fatalf("failed to initialize the database: %v", err)
	}

	log.Println("Database initialization succeeded")
	fmt.Println("Database initialization succeeded")

	err = executeSQLFromFile("./db/seed/warehouse_seed.sql")
	if err != nil {
		log.Fatalf("failed to insert data into the database: %v", err)
	}

	log.Println("Data initialization succeeded")
	fmt.Println("Data initialization succeeded")
}
