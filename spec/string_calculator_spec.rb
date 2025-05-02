require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "add" do
    it "returns 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "returns the number itself when a single number is given" do
      expect(calculator.add("7")).to eq(7)
    end

    it "returns the sum when two numbers are given" do
      expect(calculator.add("2,5")).to eq(7)
    end

    it "returns the sum when more than two numbers are given" do
      expect(calculator.add("1,2,3")).to eq(6)
      expect(calculator.add("4,5,6,7")).to eq(22)
    end

    it "returns the sum when new lines are used between numbers" do
      expect(calculator.add("1\n2,3")).to eq(6)
      expect(calculator.add("4\n5\n6")).to eq(15)
    end

    it "supports custom delimiters like //;\n1;2" do
      expect(calculator.add("//;\n1;2")).to eq(3)
      expect(calculator.add("//#\n2#3")).to eq(5)
    end

    it "raises an exception when negative numbers are passed, showing all negatives" do

      expect {
        calculator.add("1,-2")
      }.to raise_error("negative numbers not allowed -2")

      expect {
        calculator.add("3,-2,-5")
      }.to raise_error("negative numbers not allowed -2,-5")
    end
  end
end