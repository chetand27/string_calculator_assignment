require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
  def test_empty_string
    assert_equal 0, StringCalculator.add('')
  end

  def test_single_number
    assert_equal 1, StringCalculator.add('1')
  end

  def test_two_number
    assert_equal 6, StringCalculator.add('1,5')
  end
end
