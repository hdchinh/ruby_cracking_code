class SetOfStacks
  attr_accessor :array_stacks, :max_item_in_stack, :total

  def initialize(max_item)
    @array_stacks = []
    @total = 0
    @max_item_in_stack = max_item
  end

  def push(value)
    if(total == 0)
      @array_stacks.push([value])
      @total += 1
    else
      # push new array
      @array_stacks.push([]) if !get_size_stack(current_stack())

      if(get_size_stack(current_stack()) < @max_item_in_stack)
        @array_stacks[current_stack()].push(value)
      else
        @array_stacks.push([value])
      end
    end
  end

  def pop
    return nil if array_stacks_size() == 0

    if get_size_stack(current_stack()) == 0
      @array_stacks[current_stack() - 1].pop()
      @array_stacks.pop()
      return
    end

    if get_size_stack(current_stack()) == 1
      return @array_stacks.pop()
    end

    @array_stacks[current_stack()].pop()
  end

  private

  def array_stacks_size
    @array_stacks.size
  end

  def get_size_stack(n)
    return nil if n >= array_stacks_size()
    @array_stacks[n].size
  end

  def current_stack
    return(@total/@max_item_in_stack + 1)
  end
end
