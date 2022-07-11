package setone

import (
	"encoding/base64"
	"encoding/hex"
)

func HexToBase64(hexStr string) string {
	bin, _ := hex.DecodeString(hexStr)
	encoded := base64.StdEncoding.EncodeToString([]byte(bin))

	return string(encoded)
}

func FixedXor(bufferOne, bufferTwo string) string {
	binOne, _ := hex.DecodeString(bufferOne)
	binTwo, _ := hex.DecodeString(bufferTwo)
	var fixed = make([]byte, len(binOne))

	for i := range binOne {
		fixed[i] = binOne[i] ^ binTwo[i]
	}

	encoded := base64.StdEncoding.EncodeToString([]byte(fixed))

	return string(encoded)
}
