class Stack
  def initialize
    @stack = []
  end

  def empty?
    @stack.empty?
  end

  def push(o)
    @stack << o
    self
  end

  def size
    0
  end
end
