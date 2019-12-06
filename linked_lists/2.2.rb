require_relative 'linked_lists'

# init node
a = LinkedList.new

# add node
a.add(2)
a.add(3)
a.add(4)
a.add(5)

a.show_all

# find nth from the end of list
puts "nth from end: #{a.find_nth_from_end_list(3)}"

# display list
a.show_all
