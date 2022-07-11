package set_one

import (
	"github.com/stretchr/testify/assert"
	"testing"
)

func testHexToBase64() (t *testing.T) {
	assert.Equal(t, true, HexToBase64())
}
