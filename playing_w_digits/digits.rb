class Digit
  def intitialize
  end

  def dig_pow(num1, num2)
    sum = num1.digits.reverse.each_with_index.map do |num, index|
      num ** (index + num2)
    end.sum
    quot = sum.to_f / num1
    quot % 1 == 0 ? quot : -1 
  end


end