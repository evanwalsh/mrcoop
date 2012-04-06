require 'test_helper'

class TestStream < MiniTest::Unit::TestCase
  def setup
    @stream = MrCoop::Stream.new(12345)
  end

  def test_the_truth
    assert true
  end
end