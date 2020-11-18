package main

import (
	"database/sql"
	"encoding/json"
	"flag"
	"fmt"
	"log"
	"net/http"
	"strings"

	_ "github.com/go-sql-driver/mysql"
)

var (
	dbHost            string
	dbPort            string
	dbUsername        string
	dbPassword        string
	dbName            string
	listenPort        string
	dbConnection      *sql.DB
	acceptableColumns []string
)

type Results struct {
	Results []string `json:"results"`
}

func keyIsAcceptableField(key string) (bool, string) {
	for _, v := range acceptableColumns {
		if v == key {
			return true, v
		}
	}
	return false, ""
}

func formulateOrQuery(key string, values string) string {
	query := "("
	splitVals := strings.Split(values, ",")

	for i, val := range splitVals {
		if i == 0 {
			query = query + fmt.Sprintf("(%s = %s)", key, val)
		} else {
			query = query + fmt.Sprintf(" OR (%s = %s)", key, val)
		}
	}
	return fmt.Sprintf("%s)", query)
}

func all(w http.ResponseWriter, r *http.Request) {

	w.Header().Set("Content-Type", "application/json")
	w.Header().Set("Access-Control-Allow-Origin", "*")
	w.Header().Set("Access-Control-Allow-Methods", "GET")

	query := "SELECT bacteria_name FROM biochemical_tests"
	fmt.Println(query)

	rows, err := dbConnection.Query(query)

	var finalResult Results
	var tmp string

	defer rows.Close()
	for rows.Next() {
		// Scan on record
		if err := rows.Scan(&tmp); err != nil {
			fmt.Println("failed to scan result")
		}
		finalResult.Results = append(finalResult.Results, tmp)
	}

	finalResultJSON, err := json.Marshal(finalResult)
	if err != nil {
		fmt.Println("Failed to convert result to JSON")
	}

	w.Write(finalResultJSON)
}

func query(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/json")
	w.Header().Set("Access-Control-Allow-Origin", "*")
	w.Header().Set("Access-Control-Allow-Methods", "GET")

	r.ParseForm()
	w.Header().Set("Content-Type", "application/json")

	query := "SELECT bacteria_name FROM biochemical_tests WHERE "
	i := 0
	for key, value := range r.Form {
		fmt.Printf("%s = %s\n", key, value)

		// key is a column within the database
		acceptable, queryParam := keyIsAcceptableField(key)
		if acceptable {
			if i == 0 {
				query = query + formulateOrQuery(queryParam, value[0])
			} else {
				query = query + " AND " + formulateOrQuery(queryParam, value[0])
			}

		}
		i++
	}
	fmt.Println(query)

	rows, err := dbConnection.Query(query)

	var finalResult Results
	var tmp string

	defer rows.Close()
	for rows.Next() {
		// Scan one customer record
		if err := rows.Scan(&tmp); err != nil {
			fmt.Println("failed to scan result")
		}
		finalResult.Results = append(finalResult.Results, tmp)
	}

	finalResultJSON, err := json.Marshal(finalResult)
	if err != nil {
		fmt.Println("Failed to convert result to JSON")
	}

	w.Write(finalResultJSON)
}

func main() {
	flag.StringVar(&dbHost, "db_host", "localhost", "database hostname e.x. 127.0.0.1")
	flag.StringVar(&dbPort, "db_port", "9001", "database port e.x. 9001")
	flag.StringVar(&dbUsername, "db_username", "root", "database username, must have access to db e.x. root")
	flag.StringVar(&dbPassword, "db_password", "testroot", "username password")
	flag.StringVar(&dbName, "db_name", "bacteria", "database name")
	flag.StringVar(&listenPort, "listen_port", ":9002", "port for which to listen to connections")

	flag.Parse()

	connectionString := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s", dbUsername, dbPassword, dbHost, dbPort, dbName)
	fmt.Printf("Connection String: %s \n", connectionString)
	var err error
	dbConnection, err = sql.Open("mysql", connectionString)

	acceptableBacteria, err := dbConnection.Query("SELECT * FROM biochemical_tests")

	acceptableColumns, _ = acceptableBacteria.Columns()

	for _, column := range acceptableColumns {
		fmt.Println(column)
	}

	http.HandleFunc("/query", query)
	http.HandleFunc("/all", all)

	log.Fatal(http.ListenAndServe(listenPort, nil))

	if err != nil {
		panic(err.Error())
	}

	defer dbConnection.Close()

}
