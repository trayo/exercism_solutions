package clock

import "fmt"

type Clock struct {
	hours, minutes int
}

const TestVersion = 2

// func (clock Clock) Add(minutes int) Clock {
//   return Time(minutes)
// }

func (c Clock) String() string {
	return fmt.Sprintf("%0.2d:%0.2d", c.hours, c.minutes)
}

func AdjustHours(h int) int {
	for h > 23 || h < 0 {
		if h < 0 {
			h += 24
		} else {
			h -= 24
		}
	}
	return h
}

func Time(hours, minutes int) Clock {
	for minutes > 59 || minutes < 0 {
		if minutes < 0 {
			hours -= 1
			minutes += 60
		} else {
			hours += 1
			minutes -= 60
		}
	}

	hours = AdjustHours(hours)
	return Clock{hours, minutes}
}
