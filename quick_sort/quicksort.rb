class Quicksort
  def initialize
  end

  def sort(array)
    return 0 if array.count == 0
    sum = array.pop + sort(array)
  end

  def count_nums(array)
    return 0 if array.count == 0
    array.pop
    sum = 1 + count_nums(array)
  end

  def find_maximum(array)
    max_num = 0 if array.count == 0
    max_num = array.last if max_num < array.last
    array.pop
  end
end