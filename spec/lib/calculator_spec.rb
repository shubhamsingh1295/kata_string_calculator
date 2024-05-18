require 'rails_helper'
require 'calculator'

RSpec.describe Calculator, type: :model do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(Calculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(Calculator.add("1")).to eq(1)
    end

    it "returns the sum of two numbers in string" do
      expect(Calculator.add("1,2")).to eq(3)
    end

    it "returns the sum of multiple numbers in string" do
      expect(Calculator.add("1,2,3")).to eq(6)
    end

    it "handles new lines between numbers in string" do
      expect(Calculator.add("1\n2,3,4")).to eq(10)
    end

    it "supports different delimiters" do
      expect(Calculator.add("//;\n1;2")).to eq(3)
    end
  end
end
