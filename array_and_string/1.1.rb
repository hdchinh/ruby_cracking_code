# use array
def is_unique_use_array(str)
  arr = []

  str.split('').each do |char|
    return false if(arr[char.ord])
    arr[char.ord] = true
  end

  return true
end

# use hash
def is_unique_use_hash(str)
  h = {}

  str.split('').each do |char|
    return false if(h[char])
    h[char] = char
  end

  return true
end
