package main

import (
	"net/http"
	"log"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)


func main() {
	e := echo.New()
	e.Use(middleware.Static("/static"))
	e.Static("/", "_site")
	if err := e.Start(":9100"); err != http.ErrServerClosed {
	  log.Fatal(err)
	}
  }