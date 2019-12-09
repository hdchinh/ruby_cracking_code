class ArrayFor3Stacks
  attr_accessor :arr

  def initialize
    @arr = []
  end

  def push(k, value)
    i = k

    while(i < arr_size() || @arr[i])
      i += 3
    end
    @arr[i] = value
  end

  def pop(k)
    position = i = k

    loop do
      position = i
      i += 3
      break if(i >= arr_size() || !@arr[i])
    end

    @arr[position] = nil
  end

  private

  def arr_size
    @arr.size
  end
end
