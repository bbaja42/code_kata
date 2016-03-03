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
end
