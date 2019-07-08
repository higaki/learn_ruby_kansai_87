require 'test/unit'
require 'mocha/setup'
require 'person'

class TestPerson < Test::Unit::TestCase
  def test_age
    matz = Person.new('matz', Time.local(1965, 4, 14))

    Time.stubs(:now).returns(Time.local(2019, 7, 13))
    assert_equal 54, matz.age
  end
end
# >> Loaded suite -
# >> Started
# >> .
# >> Finished in 0.000585 seconds.
# >> -------------------------------------------------------------------------------
# >> 1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 100% passed
# >> -------------------------------------------------------------------------------
# >> 1709.40 tests/s, 1709.40 assertions/s
