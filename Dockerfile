FROM golang:1.22.5-alpine AS builder
RUN mkdir /build
WORKDIR /build
ADD go.mod go.sum main.go ./
RUN go build

FROM alpine:3.20
COPY --from=builder /build/go-hello-world /usr/sbin/go-hello-world
ENV GIN_MODE="release"
EXPOSE 8080
CMD ["/usr/sbin/go-hello-world"]
