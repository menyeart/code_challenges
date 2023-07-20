require './brackets'
require 'pry'

RSpec.describe "Brackets" do
  it "exists" do
    bracket = Bracket.new

    expect(bracket).to be_an_instance_of(Bracket)
  end

  it "can determine if a string of brakckets are valid" do
    bracket = Bracket.new

    expect(bracket.valid?("()")).to eq(true)
    expect(bracket.valid?("[(])")).to eq(false)
    expect(bracket.valid?("(){}[]")).to eq(true)
    expect(bracket.valid?("([{}])")).to eq(true)
    expect(bracket.valid?("(}")).to eq(false)
    expect(bracket.valid?("[(])")).to eq(false)
    expect(bracket.valid?("[(])")).to eq(false)
  end
end