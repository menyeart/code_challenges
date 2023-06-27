require "./bin_search"
require "pry"

RSpec.describe "BinSearch" do
  it "can match a given number using binary serach and out put the number of guesses it took" do
    search = BinSearch.new

    expect(search.search(100000, 10) < 17).to be_truthy
    expect(search.search(1000000, 1) < 20).to be_truthy
    expect(search.search(1000000000, 1) < 20).to be_truthy
  end
end