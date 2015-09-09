package secret

import (
	"fmt"
	"strconv"
)

var codes = []string{"jump", "close your eyes", "double blink", "wink"}

func Handshake(code int) []string {

	if code <= 0 {
		return nil
	}

	binaryString := fmt.Sprintf("%05s", strconv.FormatInt(int64(code), 2))
	if len(binaryString) > 5 {
		binaryString = binaryString[len(binaryString)-5:]
	}

	var handshake []string
	for i := len(codes); i > 0; i-- {
		if string(binaryString[i]) == "1" {
			handshake = append(handshake, codes[i-1])
		}
	}

	if string(binaryString[0]) == "1" {
		handshake = reverse(handshake)
	}

	return handshake
}

func reverse(s []string) []string {
	var result []string
	for i := len(s) - 1; i >= 0; i-- {
		result = append(result, s[i])
	}
	return result
}
