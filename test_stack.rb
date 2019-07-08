require 'test/unit'
require 'stack'

class TestStack < Test::Unit::TestCase
  def setup
    @stack = Stack.new
  end

  def test_empty_by_empty
    assert @stack.empty?
  end

  def test_empty_by_nonempty
    @stack.push :anyone
    refute @stack.empty?
  end

  def test_size_by_empty
    assert_equal 0, @stack.size
  end
end

# >> Loaded suite -
# >> Started
# >> ..F
# >> ===============================================================================
# >> Failure: test_size_by_empty(TestStack)
# >> -:19:in `test_size_by_empty'
# >> <0> expected but was
# >> <nil>
# >> ===============================================================================
# >> 
# >> Finished in 0.004808 seconds.
# >> -------------------------------------------------------------------------------
# >> 3 tests, 3 assertions, 1 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 66.6667% passed
# >> -------------------------------------------------------------------------------
# >> 623.96 tests/s, 623.96 assertions/s
