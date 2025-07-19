BINARY=app

.PHONY: all build test lint fmt clean

all: build

build:
go build -o bin/$(BINARY) ./cmd/app

test:
go test ./...

lint:
golangci-lint run

fmt:
gofmt -w $(shell find . -name '*.go' -not -path './vendor/*')

clean:
rm -rf bin
