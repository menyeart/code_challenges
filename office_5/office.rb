class Office
  def initialize(rooms, chairs_needed)
    @rooms = rooms
    @chairs_needed = chairs_needed
    @chairs =[]
  end

  def get_chairs
    taken_chairs = 0
    return "Game On" if @chairs_needed == 0

      @rooms.each do |room|
        empty_chairs = room[1] - room[0].split("").count
        if @chairs.sum == @chairs_needed
          return @chairs
        elsif empty_chairs > @chairs_needed - @chairs.sum
          @chairs << @chairs_needed - @chairs.sum
        elsif empty_chairs >= 0
          taken_chairs += empty_chairs
          @chairs << empty_chairs
        else
          @chairs << 0
        end
      end
    return "Not enough!" if @chairs.sum < @chairs_needed
    @chairs
  end




end