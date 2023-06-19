require './anagram'
require 'pry'

describe "Anagram" do
  it "determines if a word is an anagram" do
    anagram = Anagram.new('Creative', 'Reactive')

    expect(anagram.gram).to eq(true)
  end

  it "determines if a word is an anagram" do
    anagram = Anagram.new("foefet", "toffee")

    expect(anagram.gram).to eq(true)
  end

  it "determines if a word is an anagram" do
    anagram = Anagram.new("Buckethead", "DeathCubeK")

    expect(anagram.gram).to eq(true)
  end

  it "determines if a word is an anagram" do
    anagram = Anagram.new("Twoo", "WooT")

    expect(anagram.gram).to eq(true)
  end

  it "determines if a word is an anagram" do
    anagram = Anagram.new("dumble", "bumble")

    expect(anagram.gram).to eq(false)
  end

  it "determines if a word is an anagram" do
    anagram = Anagram.new("ound", "round")

    expect(anagram.gram).to eq(false)
  end


end
