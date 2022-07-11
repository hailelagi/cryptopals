package main

import (
	"github.com/hailelagi/matasano/go/setone"
	"github.com/stretchr/testify/assert"
	"testing"
)

func testHexToBase64() (t *testing.T) {
	assert.Equal(t, true, setone.HexToBase64())
}
