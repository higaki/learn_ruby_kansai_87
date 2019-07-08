require 'test/unit'
require 'stack'

class TestStack < Test::Unit::TestCase
  def setup
    @stack = Stack.new
  end

  def test_empty_by_empty
    assert @stack.empty?
  end
end

# >> Loaded suite -
# >> Started
# >> F
# >> ===============================================================================
# >> Failure: test_empty_by_empty(TestStack): <nil> is not true.
# >> -:10:in `test_empty_by_empty'
# >> ===============================================================================
# >> 
# >> Finished in 0.009484 seconds.
# >> -------------------------------------------------------------------------------
# >> 1 tests, 1 assertions, 1 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 0% passed
# >> -------------------------------------------------------------------------------
# >> 105.44 tests/s, 105.44 assertions/s
