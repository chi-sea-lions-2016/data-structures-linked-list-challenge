class Node

  attr_reader :pointer, :value

  def initialize(element)
    @value = element
    @pointer = nil
  end

  def insert_after(other_node)
    @pointer = other_node
  end

  def remove_after
    @pointer = nil
  end

end
