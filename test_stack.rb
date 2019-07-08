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

  def test_pop_by_2_elements
    @stack.push(:ALFA).push(:BRAVO)
    assert_equal 2, @stack.size
    refute @stack.empty?

    assert_equal :BRAVO, @stack.pop # TEST
    assert_equal 1, @stack.size
    refute @stack.empty?
  end
end

# >> Loaded suite -
# >> Started
# >> ..F
# >> ===============================================================================
# >> Failure: test_pop_by_2_elements(TestStack)
# >> -:32:in `test_pop_by_2_elements'
# >> <:ALFA> expected but was
# >> <:BRAVO>
# >> 
# >> diff:
# >> ? :  ALFA
# >> ?  BR VO 
# >> ===============================================================================
# >> ..
# >> Finished in 0.006416 seconds.
# >> -------------------------------------------------------------------------------
# >> 5 tests, 7 assertions, 1 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 80% passed
# >> -------------------------------------------------------------------------------
# >> 779.30 tests/s, 1091.02 assertions/s
