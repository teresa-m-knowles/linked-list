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
    i = 0
    next_node = nil
    prev_node = nil
    node = @head

    until next_node  && i == position do
      i += 1
      prev_node = node
      next_node = node.next_node
    end

    if i == position
      new_node = Node.new(data)
      new_node.next_node = next_node
      prev_node.next_node = new_node
    end
  end

  def insert(position, data)
    current_node = @head
    i = 0

    while position<i  && current_node.next_node do
      i += 1
      current_node = current_node.next_node
    end

    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def find(first_position, number_of_elements)
    current_node = @head
    i = 0

    while first_position > i  && current_node.next_node do
      i += 1
      current_node = current_node.next_node
    end

    count_of_elements = 0
    string = ""

    while count_of_elements < number_of_elements do
      count_of_elements += 1
      string.concat(current_node.data)
        if count_of_elements == number_of_elements
          string.concat(" ")
        end
    end
    return string

  end





end
