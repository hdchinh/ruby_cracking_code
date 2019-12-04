def count_number_of_space(str)
  count = 0
  return count if !str

  str.split('').each do |c|
    count += 1 if c == ' '
  end

  count
end

def remove_space(str)
  return str if(count_number_of_space(str) == 0)
end

count_number_of_space("h d c")
