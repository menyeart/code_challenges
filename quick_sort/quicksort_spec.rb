require './quicksort'
require 'pry'

RSpec.describe "Quicksort" do
  describe "Recursion" do
    it "sums an array of numbers" do
      sort = Quicksort.new

      expect(sort.sort([1,2,3,4,5,6])).to eq(21)
      expect(sort.sort([1])).to eq(1)
      expect(sort.sort([])).to eq(0)
      expect(sort.sort([-1,-2,-3,-4])).to eq(-10)
    end

    it "counts the number of items in an array" do
      sort = Quicksort.new

      expect(sort.count_nums([1,2,3,4,5,6])).to eq(6)
      expect(sort.count_nums([])).to eq(0)
      expect(sort.count_nums([1])).to eq(1)
    end

    it "finds the maximum number in a list" do
      sort = Quicksort.new

      expect(sort.find_maximum([1,2,3,4,5,6])).to eq(6)
      expect(sort.find_maximum([])).to eq(0)
      expect(sort.find_maximum([1])).to eq(1)
    end
  end
end