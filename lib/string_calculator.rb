class StringCalculator
  def add(numbers)
    return 0 if numbers == ""
    delimiter = ","

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2).last
    end

    numbers = numbers.gsub("\n", delimiter)
    parts = numbers.split(delimiter).map(&:to_i)
	parts.sum
  end
end