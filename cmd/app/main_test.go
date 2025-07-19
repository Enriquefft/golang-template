package main

import (
	"github.com/Enriquefft/golang-template/internal/helloworld"
	"testing"
)

func TestMainGreet(t *testing.T) {
	t.Parallel()
	got := helloworld.Greet("")
	if got != "Hello, World!" {
		t.Fatalf("got %q, want %q", got, "Hello, World!")
	}
}
