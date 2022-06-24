package setOneTest

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func HexToBase64() (t *testing.T) {
	assert.Equal(t, true, setOne.HexToBase64())
}
