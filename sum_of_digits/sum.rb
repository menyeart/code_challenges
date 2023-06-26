class Sum
  def initialize
  end


  def digital_root(n)
    sum = n.to_s.chars.map { |num| num.to_i}.sum
    return sum if sum.to_s.chars.count == 1
    digital_root(sum)
  end

# Split the number into an array of chars
# Convert each char to a number
# Sum the numbers via iteration
# Determine if the sum is a single digit
# If so return the digit.
# If not, do it again.

end