class BinSearch
  attr_reader
  def initialize
  end


  def search(number, item)
    array = (1..number).to_a
    guess_count = 0
    low = 0
    high = array.length - 1
    until low > high do
      mid = (low + high) / 2
      guess = array[mid]
      if guess == item
        return guess_count
      elsif guess > item
        high = mid - 1
      else
        low = mid + 1
      end
    end
    return "Not here bro"
  end


end