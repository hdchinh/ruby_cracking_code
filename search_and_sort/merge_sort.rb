def merge(arr, left, mid, right)
  # init tmp arrays
  tmpLeft, tmpRight = [], []

  # copy data to temp arrays
  tmpLeft = arr[left..mid]
  tmpRight = arr[(mid + 1)..right]

  # merge 2 temp arrays
  i, j = 0, 0
  k = left

  while(i < tmpLeft.length && j < tmpRight.length)
    if tmpLeft[i] <= tmpRight[j]
      arr[k] = tmpLeft[i]
      i += 1
    else
      arr[k] = tmpRight[j]
      j += 1
    end

    k += 1
  end

  while i < tmpLeft.length
    arr[k] = tmpLeft[i]
    i += 1
    k += 1
  end

  while j < tmpRight.length
    arr[k] = tmpRight[j]
    j += 1
    k += 1
  end

end


def mergesort(arr, left, right)
  if left < right
    mid = (left + right) / 2

    # recurison for haft of left and right
    mergesort(arr, left, mid)
    mergesort(arr, mid + 1, right)

    # merge sorted array
    merge(arr, left, mid, right)
  end

  arr
end


puts mergesort([7,3,2,5,5,1,10], 0, 5)
