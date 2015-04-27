package raindrops

import "fmt"

var drops = []struct {
	number int
	sound  string
}{
	{3, "Pling"},
	{5, "Plang"},
	{7, "Plong"},
}

func Convert(input int) (result string) {

	for _, d := range drops {
		if input%d.number == 0 {
			result += d.sound
		}
	}

	if result == "" {
		result = fmt.Sprintf("%d", input)
	}
	return
}
