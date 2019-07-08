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
# >> ....
# >> Finished in 0.000521 seconds.
# >> -------------------------------------------------------------------------------
# >> 4 tests, 4 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 100% passed
# >> -------------------------------------------------------------------------------
# >> 7677.54 tests/s, 7677.54 assertions/s
