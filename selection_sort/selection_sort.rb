class SelectionSort
  def initialize
  end

  def find_smallest(array)
    smallest  = array[0]
    smallest_index = 0
    array.each_with_index do |num, index|
      if num < smallest
        smallest = num
        smallest_index = index
      end
    end
    return smallest_index
  end

  def selection_sort(arr)
    new_arr = []
    arr.length.times do 
      smallest =  find_smallest(arr)
      new_arr << arr.delete_at(smallest)
    end
    new_arr
  end
end