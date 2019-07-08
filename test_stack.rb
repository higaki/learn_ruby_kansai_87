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
# >> .F
# >> ===============================================================================
# >> Failure: test_empty_by_nonempty(TestStack): <true> is neither nil or false.
# >> -:15:in `test_empty_by_nonempty'
# >> ===============================================================================
# >> 
# >> Finished in 0.005144 seconds.
# >> -------------------------------------------------------------------------------
# >> 2 tests, 2 assertions, 1 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 50% passed
# >> -------------------------------------------------------------------------------
# >> 388.80 tests/s, 388.80 assertions/s
