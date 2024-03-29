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
    @stack.size
  end

  class EmptyStackError < RuntimeError; end

  def pop
    raise EmptyStackError if empty?
    @stack.pop
  end
end
