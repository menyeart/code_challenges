class Reunion
  attr_reader :name, :activities
  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(activity)
    @activities << activity
  end

  def total_cost
    @activities.sum { |activity| activity.total_cost}
  end

  def total_owed
    total_owed = Hash.new(0)
    @activities.each do |activity|
      activity.owed.each do |k,v|
        total_owed[k] += v
      end
    end
    total_owed
  end

  def print_summary
    final_string = ""
    total_owed.each do |person|
      binding.pry
      final_string.concat("#{person[0]} owes #{person[1]}$\n") 
    end
    final_string
  end

end