class School
  attr_reader :grades

  def initialize
    @grades = {}
  end

  def add(name, grade)
    grades[grade] ? grades[grade] << name : grades[grade] = [name]
  end

  def grade(num)
    grades[num] ? grades[num].sort : []
  end

  def to_hash
    grades.sort.each_with_object({}) do |(grade, names), result|
      result[grade] = names.sort
    end
  end
end
