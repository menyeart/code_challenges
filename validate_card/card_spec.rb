require './card'
require 'pry'

RSpec.describe "Card" do
  it "is an instance of card" do
    card = Card.new

    expect(card).to be_an_instance_of(Card)
  end

  it "can validate credit card numbers" do
    card = Card.new
    expect(card.validate(1714)).to eq(false)
    expect(card.validate(12345)).to eq(false)
    expect(card.validate(891)).to eq(false)
    expect(card.validate(123)).to eq(false)
    expect(card.validate(1)).to eq(false)
    expect(card.validate(2121)).to eq(true)
    expect(card.validate(1230)).to eq(true)
  end
end