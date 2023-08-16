class Consonant
  def initialize(string)
    @string = string
  end



  # Use Gsub to replace any vowel in a string with a placeholder
  # Group the strings into substrings using the place holders (via split? via iteration?)
  # Iterate over the array of substrings and find the max (max by?)

  def highest_substring
    values = Hash.new()
    counter = 1
    
    ("a".."z").to_a.each do |letter| 
      values[letter] = counter
      counter += 1
    end

    substring = ""
    substring_array = []
    @string.gsub(/[aeiou]/i, "0").chars.each do |char|
      if char != "0"
        substring.concat(char)
      else
        substring_array << substring
        substring = ""
      end  
    end
    substring_array << substring
    substring_array.delete("")
    substring_array.map do |substring|
      substring.chars.sum{ |letter| values[letter]}
    end.max
  end

end