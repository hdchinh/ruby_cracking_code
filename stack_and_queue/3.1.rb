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

    # remove element if it is the last element in array
    @arr.pop() if position == arr_size() - 1

    # set element to nil if it store at middle array
    @arr[position] = nil
  end

  def show
    @arr.each do |n|
      if n
        puts "#{n}\n"
      else
        puts "nil\n"
      end
    end
  end

  private

  def arr_size
    @arr.size
  end
end

arr = ArrayFor3Stacks.new
arr.push(0, 0)
arr.push(2, 2)
arr.push(2, 22)

arr.show()
