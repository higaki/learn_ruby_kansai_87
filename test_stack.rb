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
end

# >> Loaded suite -
# >> Started
# >> ..
# >> Finished in 0.000413 seconds.
# >> -------------------------------------------------------------------------------
# >> 2 tests, 2 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 100% passed
# >> -------------------------------------------------------------------------------
# >> 4842.62 tests/s, 4842.62 assertions/s
