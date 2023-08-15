class Shelves

  def initialize(start_shelf, end_shelf)
    @start = start_shelf
    @end = end_shelf
  end

  def jump 
    total_distance = @end - @start
    total_distance < 3 ? total_distance : (total_distance / 3) + (total_distance % 3)
  end 

end