require_relative 'linked_lists'

# init node
a = LinkedList.new

# add node
a.add(2)
a.add(3)
a.add(4)
a.add(5)
a.add(6)

a.show_all

a.remove_middle_node()

# display list
a.show_all
