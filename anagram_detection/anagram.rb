class Anagram
  attr_reader :gram
  def initialize(word, other_word)
    @word = word
    @other_word = other_word
    @word_hash = Hash.new(0)
    @other_word_hash = Hash.new(0)
  end


  def gram
    @word.downcase.chars.each { |char| @word_hash[char] += 1 }
    @other_word.downcase.chars.each { |char| @other_word_hash[char] += 1 }
    @word_hash == @other_word_hash
  end
end