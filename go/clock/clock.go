package clock

import "fmt"

type Clock struct {
  hour, minutes int
}

const TestVersion = 2

// func (clock Clock) Add(minutes int) Clock {

//   return Time(minutes)
// }

func (clock Clock) String() string {
  "hours: clock"
}

func Time(hours, minutes int) Clock {
  hoursToMinutes := hours * 60
  total := minutes + hoursToMinutes

  h := total / 60
  m := total % 60

  return Clock(hour: h, minutes: m)
  // fmt.Println(hour)
  // fmt.Println(minutes)
}
