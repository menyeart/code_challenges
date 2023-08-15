class Shelves

  def initialize(start_shelf, end_shelf)
    @start = start_shelf
    @end = end_shelf
  end

  def jump 
    total_distance = @end - @start

    if total_distance < 3
      return total_distance / 1
    else
      three_jumps = total_distance / 3
      one_jumps = total_distance % 3
      total_jumps = three_jumps + one_jumps
    end
  end 

end