package diffsquares

// import "math"

func SquareOfSums(i int) int {
	result := i
	for j := 1; j < i; j++ {
		result += j
	}
	return result * result
}

func SumOfSquares(i int) int {
	result := i * i
	for j := 1; j < i; j++ {
		result += j * j
	}
	return int(result)
}

func Difference(i int) int {
	return SquareOfSums(i) - SumOfSquares(i)
}
