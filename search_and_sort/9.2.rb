def get_array_of_strings(arr, str)
  tmp_arr = []

  arr.each do |n|
    tmp_arr.push(n) if(str == n || str == n.reverse)
  end

  tmp_arr
end

def sort(arr)
  result_arr, hash = [], {}

  arr.each_with_index do |element, index|
    hash[element] = true if(!hash.key?(element) && !hash.key?(element.reverse))
  end

  hash.each do |key, value|
    result_arr += get_array_of_strings(arr, key)
  end

  result_arr
end

puts sort(["aba", "abc", "aba", "aba", "cba", "def", "aba"])
