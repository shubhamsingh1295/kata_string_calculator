# Kata String Calculator

A simple string calculator implemented using TDD in Ruby on Rails.

## Installation

```bash
1. Clone the repository:
  git clone https://github.com/shubhamsingh1295/kata_string_calculator.git
  cd kata_string_calculator

2. Install dependencies:
  bundle install

3. Run tests:
  bundle exec rspec
```    

## Development Process
This project follows the three laws of TDD:

- You are not allowed to write any production code unless it is to make a failing unit test pass.
- You are not allowed to write any more of a unit test than is sufficient to fail; and compilation failures are failures.
- You are not allowed to write any more production code than is sufficient to pass the one failing unit test.

## Directory Structure
- app/services/calculator_service.rb: Contains the CalculatorService class.
- spec/services/calculator_service_spec.rb: Contains the RSpec tests for the CalculatorService class.

## Acknowledgements
 - Inspired by the String Calculator Kata
 - Follows the principles outlined in the video ["Test Driven Development (TDD)"](https://www.youtube.com/watch?v=qkblc5WRn-U&feature=youtu.be)
