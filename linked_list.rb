require_relative 'node'

class LinkedList
  def initialize
    @firstNode = nil
    #@lastNode = nil
  end

  def insert_first(element)
    if @firstNode == nil
      @firstNode = Node.new(element)
      p "First Node is" + @firstNode.to_s
    else
      tempNode = @firstNode
      @firstNode = Node.new(element)
      p "First Node is" + @firstNode.to_s
      p @firstNode
      @firstNode.insert_after(tempNode)
    end
  end

  def remove_first
    if @firstNode == nil
    else
      if @firstNode.nextNode == nil
        node = @firstNode
        @firstNode = nil
        return node
      else
        node = @firstNode
        @firstNode = @firstNode.nextNode
        return node
      end
    end
  end

  def insert_last(element)
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
p "Removing First Node!"
p myLinkedList.remove_first
