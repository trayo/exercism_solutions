package leap

const TestVersion = 1

func IsLeapYear(year int) bool {
	if divisibleByFour(year) && notACentury(year) {
		return true
	} else {
		return aLeapCentury(year)
	}
}

func divisibleByFour(year int) bool {
	return year%4 == 0
}

func notACentury(year int) bool {
	return year%100 != 0
}

func aLeapCentury(year int) bool {
	return year%400 == 0
}
