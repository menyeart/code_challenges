class Card
  def initialize
  end

  def validate(int)
    final_sum = int.digits.map.with_index do |dig, index|
      dig if index.even?
      dig *= 2 if index.odd?
      dig -= 9 if dig > 9
      dig
    end
    final_sum.sum % 10 == 0
  end
end