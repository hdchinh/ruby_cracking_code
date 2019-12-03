def remove_duplicate(str)
  return if(!str)

  h = {}
  pointer = 0

  str.split('').each_with_index do |char, index|
    if(h[char])
      str.slice!(index - pointer)
      pointer += 1
    else
      h[char] = true
    end
  end

  str
end
