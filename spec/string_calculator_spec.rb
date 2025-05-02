require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  describe "add" do
    it "returns 0 for an empty string" do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it "returns the number itself when a single number is given" do
      calculator = StringCalculator.new
      expect(calculator.add("7")).to eq(7)
    end

    it "returns the sum when two numbers are given" do
      calculator = StringCalculator.new
      expect(calculator.add("2,5")).to eq(7)
    end

    it "returns the sum when more than two numbers are given" do
      calculator = StringCalculator.new
      expect(calculator.add("1,2,3")).to eq(6)
      expect(calculator.add("4,5,6,7")).to eq(22)
    end
  end
end