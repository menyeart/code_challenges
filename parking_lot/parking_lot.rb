class ParkingLot
  attr_reader :lots

  def initialize(size)
    @lots= Array.new(size, nil)
  end

  def park(car)
    return "The parking lot is currently full" if @lots.count { |lot| lot != nil} == @lots.size
    @lots.each_with_index do |lot, index|
      if lot == nil
        @lots[index] = car
        return @lots
      end
    end
  end
end