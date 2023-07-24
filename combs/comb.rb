class Comb
  def initialize
  end

  ## For every matched gap, get to minus 2 off the the entire length necessary
  ## For ever gap that fits the entire other comb, get to minur the entire other comb.

  # def find_length(comb_1, comb_2)
  #   comb_arr_1 = comb_1.chars
  #   comb_arr_2 = comb_2.chars

  #   # One fits in the other
  #   biggest_gap = 0
  #   missing_teeth = 0
  #   start = "no"
    
  #   comb_arr_1.each do |tooth|
  #     if tooth == "."
  #       start = "yes"
  #       missing_teeth += 1
  #     elsif start == "yes" && tooth == "*"
  #       biggest_gap = missing_teeth
  #       missing_teeth = 0
  #     end
  #   end
    
  #   if comb_arr_2.length <= biggest_gap
  #     comb_arr_1.length
  #   else
  #     comb_arr_1[1] == "." || comb_arr_1[comb_arr_1.length - 1] == "." &&  comb_arr_2[1] == "." || comb_arr_2[comb_arr_1.length - 1] == "."

  #     (comb_arr_1.length + comb_arr_2.length) - 2   
  #   end
  # end
  def find_length(comb_1, comb_2)
    comb_arr_1 = comb_1.chars
    comb_arr_2 = comb_2.chars

    comb_arr_1.map! do |tooth|
      if tooth == "*"
        tooth = "."
      else
        tooth = "*"
      end
    end

    comb_2.include?(comb_arr_1.join(""))
  end


end