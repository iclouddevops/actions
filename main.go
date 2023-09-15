package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func HandlerPing(ctx *gin.Context) {

	// return data
	ctx.JSON(http.StatusOK, gin.H{
		"message": "pong",
	})
}

func main() {
	r := gin.Default()

	r.GET("/ping", HandlerPing)

	r.Run() // listen and serve on 0.0.0.0:8080
}
