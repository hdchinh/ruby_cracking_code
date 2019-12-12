def max_depth(root)
  return 0 if !root

  return 1 + [root.left, root.right].max
end

def min_depth(root)
  return 0 if !root

  return 1 + [root.left, root.right].min
end

def is_balanced?(root)
  return true if (max_depth(root) - min_depth(root) < 2)
  return false
end
