class Stack
  def initialize
    @stack = []
  end

  def empty?
    true
  end

  def push(o)
    @stack << o
    self
  end
end
