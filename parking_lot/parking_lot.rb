class ParkingLot
  attr_reader :lots

  def initialize(size)
    @lots= Array.new(size, nil)
  end

  def park(car)
    return "The parking lot is currently full" if is_full? ==  true
    @lots.each_with_index do |lot, index|
      if lot == nil
        @lots[index] = car
        return @lots
      end
    end
  end

  def is_full?
     @lots.count { |lot| lot != nil} == @lots.size
  end

  def size
    @lots.count
  end

  def remove_car(car)
    @lots.delete(car)
  end
end