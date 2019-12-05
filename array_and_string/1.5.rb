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
  str_arr = str.split(' ')
  str_result = ''

  str_arr.each_with_index do |sub_str, index|
    str_result += sub_str

    str_result += '%20' if (index < str_arr.size - 1)
  end

  str_result
end

puts remove_space("h d c")
