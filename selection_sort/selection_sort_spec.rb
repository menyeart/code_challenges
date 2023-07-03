require "pry"
require "./selection_sort"

describe SelectionSort do
  it "is an instance of selection sort" do
    selection = SelectionSort.new

    expect(selection).to be_an_instance_of(SelectionSort)
  end

  it "can find the smallest element in an array" do
    selection = SelectionSort.new

    expect(selection.find_smallest([3,4,8,7,6,9,10, 1])).to eq(7)
    expect(selection.find_smallest([100, 150, 147 ,258 ,101 ,666, 874])).to eq(0)
    expect(selection.find_smallest([56, 1, 1000 ,258 ,101 ,666, 874])).to eq(1)
  end

  it "can sort an array of numbers via the selection Sort method" do
    selection = SelectionSort.new

    expect(selection.selection_sort([3,4,8,7,6,9,10, 1])).to eq([1, 3, 4, 6, 7, 8, 9, 10])
    expect(selection.selection_sort([1,5,7,19,0, 3, 44])).to eq([0, 1, 3, 5, 7, 19, 44])
  end
end