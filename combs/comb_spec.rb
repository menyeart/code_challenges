require './comb'
require 'pry'

RSpec.describe "Comb" do
  describe "Find Length" do
    it "can find the length necessary for given combs" do
      comb = Comb.new

      expect(comb.find_length("*..*","*.*")).to eq(5)
      # expect(comb.find_length("*...*","*.*")).to eq(5)
      # expect(comb.find_length("*..*.*","*.***")).to eq(9)
      # expect(comb.find_length("*.*","*.*")).to eq(4)
      # expect(comb.find_length("*.**","*.*")).to eq(5)
      
    end
  end
end