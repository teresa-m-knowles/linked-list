require 'pry'
require './lib/node'
class LinkedList
  attr_reader :head,
              :nodes

  def initialize
    @head = nil
  end

  def append(data)
    if !find_end
      @head = Node.new(data)
    else
      find_end.next_node = Node.new(data)
    end
    data
  end

  def find_end
    node = @head
    return node if !@head
    while node.next_node do
      node = node.next_node
    end
    node
  end

  def count
    i = 0
    node = @head
    return i if !@head
    if node
      i += 1
    end
    while node.next_node do
      node = node.next_node
      i += 1
    end
    i
  end

  def to_string
    string = ""
    node = @head
    return string if !@head

    while node do
      string.concat(node.data)
      if node.next_node
        string.concat(" ")
      end
      node = node.next_node
    end
    string
  end

  def prepend(data)
    node = Node.new(data)
    node.next_node = @head
    @head = node
    data
  end

  def insert(position, data)
    

  end



end
