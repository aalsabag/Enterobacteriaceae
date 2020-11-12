package main

import (
	"database/sql"
	"fmt"
	"net/http"

	_ "github.com/go-sql-driver/mysql"
)

func query(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()
	//query := "SELECT bacteria_name FROM biochemical_tests"
	for key, value := range r.Form {
		fmt.Printf("%s = %s\n", key, value)

	}
	fmt.Fprint(w, "Welcome to Golang Web App.")
}

func main() {
	db, err := sql.Open("mysql", "username:password@tcp(127.0.0.1:9001)/bacteria")
	http.HandleFunc("/query", query)
	http.ListenAndServe(":9002", nil)

	if err != nil {
		panic(err.Error())
	}

	defer db.Close()

}
