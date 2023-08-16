require './consonant'
require 'pry'

RSpec.describe "Consonant" do
  it 'exists' do
    cons = Consonant.new("zodiac")

    expect(cons).to be_an_instance_of(Consonant)
  end

  it 'returns the highest value of consonant substrings' do
    cons = Consonant.new("zodiac")

    expect(cons.highest_substring).to eq(26)
  end

  it 'returns the highest value of consonant substrings' do
    cons = Consonant.new("chruschtschov")

    expect(cons.highest_substring).to eq(80)
  end
end