class ColoradoLottery
  attr_reader :registered_contestants,
              :winners,
              :current_contestants
  def initialize
    @registered_contestants = Hash.new { |h, k| h[k] = [] }
    @winners = []
    @current_contestants = Hash.new { |h, k| h[k] = [] }
  end

  def interested_and_18?(contestant, game)
    contestant.age >= 18 && contestant.game_interests.include?(game.name)
  end

  def can_register?(contestant, game)
    return false if interested_and_18?(contestant, game) == false

    if contestant.out_of_state? == true && game.national_drawing == false
      return false
    elsif contestant.out_of_state? == true && game.national_drawing == true
      return true
    else
      true
    end
  end

  def register_contestant(contestant, game)
    @registered_contestants[game.name] << contestant if can_register?(contestant, game) ==  true
  end

  def eligible_contestants(game)
    @registered_contestants[game.name]
  end

  def charge_contestants(game)
    eligible_contestants(game).each { |contestant| contestant.spending_money -= game.cost }
  end




end