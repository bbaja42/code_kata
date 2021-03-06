require "minitest/autorun"
require 'test/unit'
require_relative "meme"

# go away
class TestMeme < Minitest::Test
  def setup
    @meme = Meme.new
  end

  def test_method_can_take_no_arguments
    assert_equal 0, @meme.add("")
  end

  def test_method_can_take_single_number
    assert_equal 1, @meme.add("1")
  end

  def test_method_can_take_two_comma_separated_numbers
    assert_equal 3, @meme.add("1,2")
  end

  def test_method_can_take_many_comma_separated_numbers
    assert_equal 15, @meme.add("1,2,3,4,5")
  end

  def test_method_can_take_newline_delimited_numbers
    assert_equal 6, @meme.add("1\n,2,3")
  end

  def test_method_can_take_custom_delimiter
    assert_equal 3, @meme.add("//;\n1;2")
  end

  def test_method_raise_error_when_one_negative_number
    err = -> { @meme.add("//;\n1;2;-1") }.must_raise NegativeNumberNotAllowed
    err.message.must_match "-1"
  end
end
