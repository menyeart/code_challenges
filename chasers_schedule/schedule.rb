class Schedule
  def initialize(speed, duration)
    @speed = speed
    @duration = duration
  end

  def longest_distance
    course = Array.new(@duration) {[@speed, false]}
    distances = []

    course.reverse.map!.with_index do |position, index|
      position[1] = true if index.even? == true

      times_sprinted = 0
      sum = 0

      course.each do |position|
        position[1] == true ? sum += (position[0] - times_sprinted) * 2 : sum += position[0] - times_sprinted
        times_sprinted += 1 if position[1] == true
      end
      distances << sum
    end
    distances.max
  end
end