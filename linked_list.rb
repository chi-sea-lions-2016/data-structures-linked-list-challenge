require_relative 'node'

class LinkedList
  def initialize
    @firstNode = nil
  end

  def insert_first(element)
    p "Inserting First!!"
    tempNode = @firstNode
    @firstNode = Node.new(element)
    unless @firstNode == nil
      @firstNode.insert_after(tempNode)
    end
    p "First Node has " + @firstNode.element.to_s
  end

  def remove_first
    p "Removing First!!"
    node = @firstNode

    return node if node == nil

    if node.nextNode == nil
      @firstNode = nil
    else
      node.remove_after
      @firstNode = @firstNode.nextNode
    end
    return node
  end

  def insert_last(element)
    # find last node
    previousNode = @firstNode
    currentNode = @firstNode
    until currentNode.nextNode == nil
      previousNode = currentNode
      currentNode = currentNode.nextNode
    end

    currentNode.insert_after(Node.new(element))
  end

  def remove_last
    previousNode = @firstNode
    currentNode = @firstNode
    until currentNode.nextNode == nil
      previousNode = currentNode
      currentNode = currentNode.nextNode
    end

    if currentNode == @firstNode
      @firstNode = nil
      return currentNode
    else
      previousNode.remove_after
      return currentNode
    end
  end
end

myLinkedList = LinkedList.new
p myLinkedList.remove_first
myLinkedList.insert_first("Uber")
p myLinkedList.remove_first
myLinkedList.insert_first("Uber")
myLinkedList.insert_first("Skrr")
p myLinkedList.remove_first
