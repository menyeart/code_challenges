class Funnel
  def initialize
    @final_string = ""
  end

  # def build_string(input)

  #   @final_string.concat(input.last.pop()
  #   until input.last = [] do
  #     reversed_arrays = input.reverse

  #     reversed_arrays.each_with_index do |array, index|
  #       if index != 0
  #         arr_min = array.min
  #         reversed_arrays[index - 1].push(arr_min)
  #         array.delete(arr_min)
  #       end
  #     end

  #   end


  #   @final_string
  # end

  def build_string(input)
    return @final_string if input.last == []
    return input.last.last if input.count == 1

    @final_string.concat(input.last.pop())
    input[-1] = [nil]
    reversed_arrays = input.reverse

    reversed_arrays.each_with_index do |array, index|
      min_index = 0
      if index != 0 && array.empty? == false
        choices = array.map.with_index { |num, index2| num if index2.between?(min_index - 2, min_index + 2)}.compact
        arr_min = choices.min
        binding.pry
        array.join.gsub(arr_min, "nil").split
        index > 1 ? reversed_arrays[index - 1].join.gsub(nil, arr_min).chars : reversed_arrays[index - 1] = [arr_min]
        # array.join.gsub(arr_min, nil)
        reversed_arrays[index - 1].gsub(nil, arr_min)
      end
        min_index = array.find_index(arr_min)
    end

      build_string(input)
  end

  # Look at the last array, if its full, drop a letter out of it
  # Take the dropped letter and add it to a string
  # After its dropped go to the next array, find the smallest letter and drop it into the first array
  # Repeat through all levels of the funnel until the first is reached. 
  # After the funnel has resettled, drop another letter, and repeat steps.
end