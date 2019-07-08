require 'test/unit'
require 'kagemusha/time'
require 'person'

class TestPerson < Test::Unit::TestCase
  def test_age
    matz = Person.new('matz', Time.local(1965, 4, 14))

    Kagemusha::Time.at(2019, 7, 13) do
      assert_equal 54, matz.age
    end
  end
end
# >> Loaded suite -
# >> Started
# >> .
# >> Finished in 0.001229 seconds.
# >> -------------------------------------------------------------------------------
# >> 1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
# >> 100% passed
# >> -------------------------------------------------------------------------------
# >> 813.67 tests/s, 813.67 assertions/s
