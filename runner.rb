require "./lib/linked_list"
p list = LinkedList.new
p list.append("plop")
p list.to_string
p list.append("suu")
p list.prepend("dop")
p list.to_string
p list.count

require 'pry'

p list.insert(1, "woo")
p list.to_string
