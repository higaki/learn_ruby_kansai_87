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
# >> E
# >> ===============================================================================
# >> Error: test_empty_by_empty(TestStack): NoMethodError: undefined method `empty?' for #<Stack:0x00007f88f100d0d0 @stack=[]>
# >> -:10:in `test_empty_by_empty'
# >> ===============================================================================
# >> 
# >> Finished in 0.000959 seconds.
# >> -------------------------------------------------------------------------------
# >> 1 tests, 0 assertions, 0 failures, 1 errors, 0 pendings, 0 omissions, 0 notifications
# >> 0% passed
# >> -------------------------------------------------------------------------------
# >> 1042.75 tests/s, 0.00 assertions/s
