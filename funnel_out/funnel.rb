class Funnel
  def initialize
    @final_string = ""
  end

  def build_string(input)
    return @final_string if input.flatten.count == @final_string.chars.count
    return input[0][0] if input.count == 1

    @final_string.concat(input.last.pop())
    input[-1] = ["nil"]

    min_index = 0
    input.reverse[0..(input.count - 2)].each_with_index do |array, index|
        choices_array = input.reverse[index + 1]

        choices = choices_array.map.with_index { |num, index2| num if index2.between?(min_index, min_index + 1) && num != "nil"}.compact

        break if choices == []
        arr_min = choices.min
        min_index = choices_array.find_index(arr_min)
        input[(index + 2) * -1][min_index] = "nil"
        lower_choice = nil

        input[(index + 1) * -1].each_with_index do |letter, index|
          lower_choice = index if letter == "nil" && index.between?(min_index - 1, min_index)
        end

        input[(index + 1) * -1][lower_choice] = arr_min
    end
    build_string(input)
  end
end