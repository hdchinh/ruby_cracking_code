def is_anagram?(str1, str2)
  return false if(str1.length != str2.length)

  length = str1.length

  0.upto(length - 1) do |i|
    return false if (str1[i] != str2[length - 1 - i])
  end

  return true
end
