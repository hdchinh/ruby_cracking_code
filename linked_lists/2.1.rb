require_relative 'linked_lists'

# init node
a = LinkedList.new

# add node
a.add(2)
a.add(3)
a.add(2)
a.add(3)
a.add(4)
a.add(5)

a.add(2)
a.add(3)
a.add(2)
a.add(3)
a.add(4)
a.add(5)


# remove duplicate
a.remove_duplicate()

# display list
a.show_all
