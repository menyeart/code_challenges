class Bracket
  def intialize
  end


  def valid?(string)
  #  parenthesis = nil
  #  brackets = nil
  #  braces = nil

  #   string.chars.each do |char|


  #     if char == "("
  #       parenthesis = "open"
  #     elsif char == ")"
  #       parenthesis = "closed"
  #     elsif char == "["
  #       brackets = "open"
  #     elsif char == "]"
  #       brackets = "closed"
  #     elsif char == "{"
  #       braces = "open"
  #     elsif char == '}'
  #       braces = "closed"
  #     end


  #   end

  #   return false if braces != "closed" || brackets != "closed"  || parenthesis == "closed" 

  # # end
  hash_2 = {
    "(" => ")",
    "[" => "]",
    "{" => "}"
        }






  hash = {}

  array = string.chars  
  array.each_with_index do | char, index |
    hash[char] = index
  end
  
  hash.each do | k, v |
    hash.find { |key, value| v == hash_2["k"] }
    



end





end