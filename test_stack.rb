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

  def test_size_by_nonempty
    @stack.push :anyone
    assert_equal 1, @stack.size
  end
end

# >> Loaded suite -
# >> Started
# >> ...F
# >> ===============================================================================
# >> Failure: test_size_by_nonempty(TestStack)
# >> -:24:in `test_size_by_nonempty'
# >> <1> expected but was
# >> <0>
# >> ===============================================================================
# >> 
# >> Finished in 0.004649 seconds.
# >> -------------------------------------------------------------------------------
# >> 4 tests, 4 assertions, 1 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 75% passed
# >> -------------------------------------------------------------------------------
# >> 860.40 tests/s, 860.40 assertions/s
