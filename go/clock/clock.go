package clock

import "fmt"

type Clock struct {
  hours, minutes int
}

const TestVersion = 2

func Time(hours, minutes int) Clock {
  hours, minutes = adjustMinutesAndHours(hours, minutes)

  return Clock{hours, minutes}
}

// func (clock Clock) Add(minutes int) Clock {
//   return Time(minutes)
// }

func (c Clock) String() string {
  return fmt.Sprintf("%0.2d:%0.2d", c.hours, c.minutes)
}

func adjustMinutesAndHours(hours, minutes int) (int, int) {
  for minutes > 59 || minutes < 0 {
    if minutes < 0 {
      hours -= 1
      minutes += 60
    } else {
      hours += 1
      minutes -= 60
    }
  }
  hours = adjustHours(hours)
  return hours, minutes
}

func adjustHours(hours int) int {
  for hours > 23 || hours < 0 {
    if hours < 0 {
      hours += 24
    } else {
      hours -= 24
    }
  }
  return hours
}

