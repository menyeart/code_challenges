class Activity
  attr_reader :name, :participants
  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, amount_paid)
    @participants[name] = amount_paid
  end

  def total_cost 
    @participants.values.sum
  end

  def split
    total_cost / count_participants
  end

  def count_participants
    @participants.count
  end

  def owed
    @participants.map { |k,v| [k, split - v]}.to_h
  end
end