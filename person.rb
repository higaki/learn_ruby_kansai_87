class Person
  include Comparable

  def initialize(name, born = nil)
    @name, @born = name, born
  end

  attr_reader :name
  attr_accessor :born

  def age
    (Time.now.strftime('%Y%m%d').to_i - @born.strftime('%Y%m%d').to_i) / 1_00_00
  end

  def to_s
    "#{@name}(#{age})"
  end

  def <=> o
    @name <=> o.name
  end

  def hash
    [@name, @born].hash
  end

  def eql? o
    [@name, @born].eql? [o.name, o.born]
  end
end

if $0 == __FILE__
  require 'date'
  matz = Person.new('matz')
  matz.born = Time.local(1965, 4, 14)
  dhh  = Person.new('dhh', DateTime.new(1979, 10, 15, 0, 0, 0, "+01:00"))

  matz.age                      # => 54
  dhh.age                       # => 39

  class Person
    def inspect; to_s end
  end

  person = key = Marshal.load(Marshal.dump matz)

  person == dhh                 # => false
  person == matz                # => true
  matz > dhh                    # => true

  people = [matz, dhh]

  people.sort                        # => [dhh(39), matz(54)]
  people.sort_by(&:age)              # => [dhh(39), matz(54)]
  people.sort{|a, b|b.age <=> a.age} # => [matz(54), dhh(39)]
  people.sort_by{|p| -p.age}         # => [matz(54), dhh(39)]
  people.sort_by{|p| p.born.to_time} # => [matz(54), dhh(39)]
  people.sort_by(&:age).reverse      # => [matz(54), dhh(39)]

  h = {matz => "Ruby", dhh => "Rails"}
  h[matz]                       # => "Ruby"
  h[dhh]                        # => "Rails"
  h[key]                        # => "Ruby"

  matz.hash                     # => -2373490752795606803
  dhh.hash                      # => 193933416006428317
  key.hash                      # => -2373490752795606803

  key.eql? matz                 # => true
  key.eql? dhh                  # => false
end
