class MostFrequent
  def intialize
  end

# 1. Strip all punctuation and line breaks w gsub/regex
# 2. Split the string into a word array
# 3. Make a count of each word using Tally
# 4. Return the 3 largest words

  def find_words(text)
    text.gsub(/[^0-9A-Za-z' ]/, '') == nil ? new_str = text : new_str = text.gsub(/[^0-9A-Za-z' ]/, '')
  
    tallied = Hash.new(0)
    new_str.downcase.split(" ").each { |word| tallied[word] += 1}
    most_occuring_words = []
    count = 0
    
    until count == 3 || tallied == {} do 
      most_occuring_word = tallied.max_by{|k,v| v}.first
      most_occuring_words << most_occuring_word 
      tallied.delete(most_occuring_word)
      count += 1
    end
  most_occuring_words.to_s.count("a-zA-Z") == 0 ? [] : most_occuring_words
  end
end