# 2.5
# Ruby implement with hash

def is_circular_linked_list?
  return false if !@head
  hash = {}

  current_node = @head
  while(current_node)
    return false if(hash.key?(current_node.object_id))

    hash[current_node.object_id] = true
    current_node = current_node.next
  end

  return false
end
