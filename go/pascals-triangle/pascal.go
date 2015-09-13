package pascal

func Triangle(numberOfRows int) [][]int {
  triangle := [][]int{[]int{1}}

  if numberOfRows <= 1 {
    return triangle
  }

  for previousRow := 0; previousRow < numberOfRows-1; previousRow++ {
    rowData := triangle[previousRow]
    newRow := []int{1}

    for i := 1; i < len(rowData); i++ {
      newRow = append(newRow, rowData[i-1] + rowData[i])
    }

    newRow = append(newRow, 1)
    triangle = append(triangle, newRow)
  }

  return triangle
}

