class Node

  attr_accessor :pointer
  attr_reader :value

  def initialize(element)
    @value = element
    @pointer = nil
  end

  def insert_after(other_node)
    other_node.pointer = @pointer
    @pointer = other_node
  end

  def remove_after
    @pointer = nil
  end

end
