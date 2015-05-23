package triangle

import (
  "fmt"
  "sort"
)

type Kind string

var Equ = Kind("Equ")
var Iso = Kind("Iso")
var Sca = Kind("Sca")
var NaT = Kind("NaT")

func KindFromSides(a, b, c float64) Kind {
  fs, ss := findShortSides(a, b, c)


  fmt.Sprintln("fs: %s, ss: %s", fs, ss)


  if a <= 0 || b <= 0 || c <= 0 {
    return NaT
  } else if a==b && b==c && c==a {
    return Equ
  } else if a==b || b==c || c==a {
    return Iso
  } else {
    return Sca
  }
}

