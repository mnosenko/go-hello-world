package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()

	r.GET("/hello", func(c *gin.Context) {
		c.String(200, "Hello, World!")
	})

	r.GET("/healthz", func(c *gin.Context) {
		c.String(200, "All is OK!!!")
	})

	r.Run(":8080")
}