require 'rails_helper'
require 'calculator_service'

RSpec.describe CalculatorService, type: :service do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(CalculatorService.add("")).to eq(0)
    end

    it "returns the number itself for a single number in string" do
      expect(CalculatorService.add("1")).to eq(1)
    end

    it "returns the sum of two numbers in string" do
      expect(CalculatorService.add("1,2")).to eq(3)
    end

    it "returns the sum of multiple numbers in string" do
      expect(CalculatorService.add("1,2,3")).to eq(6)
    end

    it "handles new lines between numbers in string" do
      expect(CalculatorService.add("1\n2,3")).to eq(6)
    end

    it "supports different delimiters in string" do
      expect(CalculatorService.add("//;\n1;2")).to eq(3)
    end

    it "raises an error for negative numbers in string" do
      expect { CalculatorService.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
    end

    it "raises an error for multiple negative numbers in string" do
      expect { CalculatorService.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2, -3")
    end
  end
end
