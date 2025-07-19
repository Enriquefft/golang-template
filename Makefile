BINARY := app

.PHONY: all build test lint fmt clean vet

all: build

build:
	go build -o bin/$(BINARY) ./cmd/app

test:
	go test ./...

lint:
	golangci-lint run

fmt:
	gofumpt -w $(shell find . -name '*.go' -not -path './vendor/*')

vet:
	go vet ./...

clean:
	rm -rf bin
