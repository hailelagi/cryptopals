package setone

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestHexToBase64(t *testing.T) {
	const input = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
	const expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

	assert.Equal(t, expected, HexToBase64(input))
}

func TestXorCombination(t *testing.T) {
	const bufferOne = "1c0111001f010100061a024b53535009181c"
	const bufferTwo = "686974207468652062756c6c277320657965"
	const expected = "746865206b696420646f6e277420706c6179"

	assert.Equal(t, expected, FixedXor(bufferOne, bufferTwo))

}
