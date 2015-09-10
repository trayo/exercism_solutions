package clock

import "fmt"

const TestVersion = 2

type Clock struct {
  hours, minutes int
}

func Time(hours, minutes int) Clock {
  return adjustMinutesAndHours(Clock{hours, minutes})
}

func (c Clock) Add(minutes int) Clock {
  c.minutes += minutes
  return adjustMinutesAndHours(c)
}

func (c Clock) String() string {
  return fmt.Sprintf("%0.2d:%0.2d", c.hours, c.minutes)
}

func adjustMinutesAndHours(c Clock) Clock {
  for c.minutes > 59 || c.minutes < 0 {
    if c.minutes < 0 {
      c.hours -= 1
      c.minutes += 60
    } else {
      c.hours += 1
      c.minutes -= 60
    }
  }

  return adjustHours(c)
}

func adjustHours(c Clock) Clock {
  for c.hours > 23 || c.hours < 0 {
    if c.hours < 0 {
      c.hours += 24
    } else {
      c.hours -= 24
    }
  }
  return c
}

