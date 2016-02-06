package clock

import "fmt"

const TestVersion = 2

type Clock struct {
	hours, minutes int
}

func Time(hours, minutes int) Clock {
	c := Clock{hours, minutes}
	return c.adjustMinutesAndHours()
}

func (c Clock) Add(minutes int) Clock {
	c.minutes += minutes
	return c.adjustMinutesAndHours()
}

func (c Clock) String() string {
	return fmt.Sprintf("%0.2d:%0.2d", c.hours, c.minutes)
}

func (c Clock) adjustMinutesAndHours() Clock {
	c.adjustMinutes()
	c.adjustHours()
	return c
}

func (c *Clock) adjustMinutes() {
	for c.minutes > 59 || c.minutes < 0 {
		if c.minutes < 0 {
			c.hours -= 1
			c.minutes += 60
		} else {
			c.hours += 1
			c.minutes -= 60
		}
	}
}

func (c *Clock) adjustHours() {
	for c.hours > 23 || c.hours < 0 {
		if c.hours < 0 {
			c.hours += 24
		} else {
			c.hours -= 24
		}
	}
}
