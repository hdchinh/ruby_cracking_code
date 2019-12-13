def merge(arr1, arr2)
  i, j, k, arr = 0, 0, 0, []

  while(i < arr1.size && j < arr2.size)
    if(arr1[i] <= arr2[j])
      arr.push(arr1[i])
      i += 1
    else
      arr.push(arr2[j])
      j +=1
    end
  end

  while(i < arr1.size)
    arr.push(arr1[i])
    i += 1
  end

  while(j < arr2.size)
    arr.push(arr2[j])
    j += 1
  end

  arr
end

puts merge([1,5,7], [2,4,6])
