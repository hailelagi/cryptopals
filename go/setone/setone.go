package setone

import (
	"encoding/base64"
	"encoding/hex"
)

// HexToBase64 converts a hexadecimal string to base64 encoding
func HexToBase64(hexStr string) string {
	bin, _ := hex.DecodeString(hexStr)
	encoded := base64.StdEncoding.EncodeToString([]byte(bin))

	return string(encoded)
}

// FixedXor finds the exclusive OR of a hexadecimal string against
// a fixed buffer/hex string
func FixedXor(bufferOne, bufferTwo string) string {
	binOne, _ := hex.DecodeString(bufferOne)
	binTwo, _ := hex.DecodeString(bufferTwo)
	var fixed = make([]byte, len(binOne))

	for i := range binOne {
		fixed[i] = (binOne[i] ^ binTwo[i])
	}

	encoded := hex.EncodeToString(fixed)
	return string(encoded)
}
