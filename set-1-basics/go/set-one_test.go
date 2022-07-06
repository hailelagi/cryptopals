package set_one

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func testHexToBase64() (t *testing.T) {
	assert.Equal(t, true, HexToBase64())
}
