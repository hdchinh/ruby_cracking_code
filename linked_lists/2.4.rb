require_relative 'linked_lists'

# init node
a = LinkedList.new
b = LinkedList.new

# add node
a.add(2)
a.add(3)
a.add(4)
# a.add(3)
b.add(1)
b.add(2)
b.add(3)

a.show_all
b.show_all

# a = 2 -> 3 -> 4
# b = 1 -> 2 -> 3
# output: 3 -> 5 -> 7

a.plus(b).show_all
