require "pry"
require "./anagram"

RSpec.describe "Anagram" do
  it "determines how many letters need to be removed from a pair of words to make them anagrams" do
    gram = Anagram.new
    
    expect(gram.difference("", "")).to eq(0)
    expect(gram.difference('a', '')).to eq(1)
    expect(gram.difference('', 'a')).to eq(1)
    expect(gram.difference('ab', 'a')).to eq(1)
    expect(gram.difference('ab', 'ba')).to eq(0)
    expect(gram.difference('ab', 'cd')).to eq(4)
    expect(gram.difference('aab', 'a')).to eq(2)
    expect(gram.difference('a', 'aab')).to eq(2)
    expect(gram.difference('codewars', 'hackerrank')).to eq(10)


  end
end