package triangle

import (
	"math"
	"sort"
)

type Kind string

var Equ = Kind("Equ")
var Iso = Kind("Iso")
var Sca = Kind("Sca")
var NaT = Kind("NaT")

func KindFromSides(a, b, c float64) Kind {

	if !validTriangle(a, b, c) {
		return NaT
	}

	if a == b && b == c {
		return Equ
	} else if a == b || b == c || c == a {
		return Iso
	} else {
		return Sca
	}
}

func validTriangle(a, b, c float64) bool {
	sorted := []float64{a, b, c}
	sort.Float64s(sorted)

	if sorted[0]+sorted[1] <= sorted[2] {
		return false
	}

	if math.IsNaN(a) || math.IsNaN(b) || math.IsNaN(c) {
		return false
	}

	if math.IsInf(a, 0) || math.IsInf(b, 0) || math.IsInf(c, 0) {
		return false
	}

	return true
}
