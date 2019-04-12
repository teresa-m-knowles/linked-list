require "./lib/linked_list"
require 'pry'

p list = LinkedList.new
p list.append("deep")
p list.append("woo")
p list.append("shi")
p list.append("shu")
p list.append("blop")

binding.pry
