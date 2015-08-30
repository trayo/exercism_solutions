package diffsquares

import "math"

func SquareOfSums(i int) int {
	result := i
	for j := 1; j < i; j++ {
		result += j
	}
	return int(math.Pow(float64(result), 2))
}

func SumOfSquares(i int) int {
	result := math.Pow(float64(i), 2)
	for j := 1; j < i; j++ {
		result += math.Pow(float64(j), 2)
	}
	return int(result)
}

func Difference(i int) int {
	return SquareOfSums(i) - SumOfSquares(i)
}
