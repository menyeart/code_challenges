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

  # def build_string(input)
  #   return @final_string if input.last == [nil]
  #   return input.last.last if input.count == 1
  # # Remove the bottom funnel letter, add it to the string
  #   @final_string.concat(input.last.pop())
  #   input[-1] = ["nil"]

  #   # Set a variable for the minimum letter's index position
  #   min_index = 0


  #   # Logic for moving letters down through the funnel

  #   input.reverse.each_with_index do |array, index|
  #     # Skip the bottom of funnel as we already did stuff with it
  #     if index != 0 && array.empty? == false
  #       # Only pick positions that are above lower funnels array position
        
  #       choices = array.map.with_index { |num, index2| num if index2.between?(min_index, min_index + 1) && num != "nil"}.compact
  #       binding.pry

  #       if choices == []
  #         input.slice!(0)
  #         break
  #       end
  #       # Take the minimum letter of available letters that can move down
  #       arr_min = choices.min
  #       # Record the index of the letter that moved down so we know what letters above can be moved into it
  #       min_index = array.find_index(arr_min)
  #       # Replace the letter that moved down with nil
  #       array[min_index] = "nil"
  #       # If its first funnel letter up, just replace nil with the next lowest. If its not, do a more complciated version
  #       index > 1 ? input[index - 1] = input[index - 1].join.gsub!("nil", arr_min).chars : input[-1] = [arr_min]
  #     end    
  #   end
  #   # Restart
  #   build_string(input)
  # end

  def build_string(input)
    return @final_string if input.count ==  1 && input[0] == ["nil"]
    
    # p input
    # p @final_string

    @final_string.concat(input.last.pop())
    input[-1] = ["nil"]

    min_index = 0
    binding.pry
    input.reverse[0..2].each_with_index do |array, index|
      # Find the level above the array you're missing one for
      
        choices_array = input.reverse[index + 1]
        break if choices_array.all? { |letter| letter == "nil"} == true

      # Find only the letters that are possible to drop down in that array

 
        # binding.pry
        if choices_array.map.with_index { |num, index2| num if index2.between?(min_index, min_index + 1) && num != "nil"}.compact == []
          choices = choices_array.map.with_index { |num, index2| num if index2.between?(min_index - 2, min_index + 1) && num != "nil"}.compact
        else
          choices = choices_array.map.with_index { |num, index2| num if index2.between?(min_index, min_index + 1) && num != "nil"}.compact
        end
          

      # Take the minium values letter from the array

        arr_min = choices.min

      # Save the index position of this letter so we can replace it with nil later
        min_index = choices_array.find_index(arr_min)

      # Replace it with nil  
        input[(index + 2) * -1][min_index] = "nil"

      # Move the letter down(make sure code works for every level, not just first)
        input[(index + 1) * -1] = input[(index + 1) * -1].join.gsub("nil", arr_min).chars

    end
    build_string(input)
  end

    

  # Look at the last array, if its full, drop a letter out of it
  # Take the dropped letter and add it to a string
  # After its dropped go to the next array, find the smallest letter and drop it into the first array
  # Repeat through all levels of the funnel until the first is reached. 
  # After the funnel has resettled, drop another letter, and repeat steps.
end