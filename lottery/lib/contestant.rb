class Contestant
  attr_reader :first_name, 
              :last_name, 
              :age, 
              :state_of_residence, 
              :game_interests

  attr_accessor :spending_money

  def initialize(input_hash)
    @first_name = input_hash[:first_name]
    @last_name = input_hash[:last_name]
    @age = input_hash[:age]
    @state_of_residence = input_hash[:state_of_residence]
    @spending_money = input_hash[:spending_money]
    @game_interests = []
  end

  def full_name
    @first_name + " " + @last_name
  end

  def out_of_state?
    @state_of_residence != "CO"
  end

  def add_game_interest(game)
    @game_interests << game
  end


end