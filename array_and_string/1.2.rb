# Ruby version :\
str = "abc"
str.reverse!

# make hard
def reverse(str)
  reverse_str = ''

  0.upto(str.length - 1) do |i|
    reverse_str[i] = str[str.length - 1 - i]
  end

  reverse_str
end
