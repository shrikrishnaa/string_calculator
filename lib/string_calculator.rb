class StringCalculator
  def add(numbers)
    return 0 if numbers == ""

    if numbers.include?(",")
      parts = numbers.split(",").map(&:to_i)
      return parts.sum
    end
    
    return numbers.to_i
  end
end