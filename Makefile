.DEFAULT_GOAL := clean

.PHONY:fmt vet build
fmt:
	go fmt ./...

vet: fmt
	go vet ./...

build: vet
	go build

run: build
	go run hello_world

clean: run
	go clean ./...
