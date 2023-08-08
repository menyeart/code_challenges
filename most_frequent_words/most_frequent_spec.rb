require './most_frequent'
require 'pry'

RSpec.describe "Most frequent" do
  it "finds the most frequent words in a string when words are letters" do
    most_frequent = MostFrequent.new

    expect(most_frequent.find_words("a a a  b  c c  d d d d  e e e e e")).to eq(["e", "d", "a"])
    end

  it "finds the most frequent words in a string disregarding case" do
    most_frequent = MostFrequent.new

    expect(most_frequent.find_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")).to eq(["e", "ddd", "aa"])
  end

  it "finds the most frequent words in a string disregarding extra commas" do
    most_frequent = MostFrequent.new

    expect(most_frequent.find_words("""In a village of La Mancha, the name of which I have no desire to call to mind, there lived not long since one of those gentlemen that keep a lance in the lance-rack, an old buckler, a lean hack, and a greyhound for coursing. An olla of rather more beef than mutton, a salad on most nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra on Sundays, made away with three-quarters of his income.""")).to eq(["a", "of", "on"])
  end

  it "finds the most frequent words in a string disregarding extra commas" do
    most_frequent = MostFrequent.new

    expect(most_frequent.find_words("  //wont won't won't ")).to eq(["won't", "wont"])
  end


end