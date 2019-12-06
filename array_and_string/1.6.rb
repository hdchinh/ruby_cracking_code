image = [
  [1,2,3,4],
  [5,6,7,8],
  [9,0,1,2],
  [3,4,5,6]
]

def roate_matrix(image)
  y = image.length
  new_arr = []
  for i in 0..y-1
    new_arr << image[i].dup
    for j in 0..y-1
      if y-j-1 == i || i > y-j-1
        image[i][j] = new_arr[y-j-1][i]
      else
        image[i][j] = image[y-j-1][i]
      end
    end
  end

  image
end

puts roate_matrix(image)
