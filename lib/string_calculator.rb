class StringCalculator
  def add(numbers)
    return 0 if numbers == ""

    numbers = numbers.gsub("\n", ",")

	parts = numbers.split(",").map(&:to_i)
	parts.sum
  end
end