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

  def test_pop_by_1_element
    @stack.push "Alice"
    assert_equal 1, @stack.size
    refute @stack.empty?

    assert_equal "Alice", @stack.pop
    assert_equal 0, @stack.size
    assert @stack.empty?
  end

  def test_pop_by_empty
    assert_raise(Stack::EmptyStackError) do
      @stack.pop
    end
  end
end

# >> Loaded suite -
# >> Started
# >> .......
# >> Finished in 0.001001 seconds.
# >> -------------------------------------------------------------------------------
# >> 7 tests, 15 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 100% passed
# >> -------------------------------------------------------------------------------
# >> 6993.01 tests/s, 14985.01 assertions/s
