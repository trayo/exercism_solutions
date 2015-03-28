package leap

const TestVersion = 1

func IsLeapYear(year int) bool {
	if divisibleByFour(year) && notACentury(year) {
		return true
	} else if aLeapCentury(year) {
		return true
	} else {
		return false
	}
}

func divisibleByFour(year int) bool {
	if year%4 == 0 {
		return true
	} else {
		return false
	}
}

func notACentury(year int) bool {
	if year%100 != 0 {
		return true
	} else {
		return false
	}
}

func aLeapCentury(year int) bool {
	if year%400 == 0 {
		return true
	} else {
		return false
	}
}
