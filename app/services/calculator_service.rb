class CalculatorService
  def self.add(numbers)
    new(numbers).add
  end

  def initialize(numbers)
    @numbers = numbers
  end

  def add
    return 0 if numbers.empty?
    return numbers.to_i if single_number?

    num_list = extract_numbers
    check_for_negatives(num_list)
    num_list.sum
  end

  private

  attr_reader :numbers

  def single_number?
    numbers.length == 1
  end

  def custom_delimiter?
    numbers.start_with?("//")
  end

  def delimiter
    return /,|\n/ unless custom_delimiter?

    custom_delimiter = numbers.match(%r{//(.)\n})[1]
    Regexp.escape(custom_delimiter)
  end

  def extract_numbers
    if custom_delimiter?
      _, number_string = numbers.split("\n", 2)
    else
      number_string = numbers
    end
    number_string.split(/#{delimiter}/).map(&:to_i)
  end

  def check_for_negatives(num_list)
    negatives = num_list.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end
