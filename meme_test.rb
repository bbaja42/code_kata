require "minitest/autorun"
require_relative "meme"

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
end
