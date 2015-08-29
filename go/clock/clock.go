package clock

import "fmt"

type Clock struct {
  hours, minutes int
}

const TestVersion = 2

func Time(hours, minutes int) Clock {
  return Clock{hours, minutes}.adjustMinutesAndHours()
}

func (c Clock) Add(minutes int) Clock {
  c.minutes += minutes
  return c.adjustMinutesAndHours()
}

func (c Clock) String() string {
  return fmt.Sprintf("%0.2d:%0.2d", c.hours, c.minutes)
}

func (c Clock) adjustMinutesAndHours() Clock {
  for c.minutes > 59 || c.minutes < 0 {
    if c.minutes < 0 {
      c.hours -= 1
      c.minutes += 60
    } else {
      c.hours += 1
      c.minutes -= 60
    }
  }

  return c.adjustHours()
}

func (c Clock) adjustHours() Clock {
  for c.hours > 23 || c.hours < 0 {
    if c.hours < 0 {
      c.hours += 24
    } else {
      c.hours -= 24
    }
  }
  return c
}

