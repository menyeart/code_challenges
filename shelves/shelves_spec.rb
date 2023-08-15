require './shelves'
require 'pry'

RSpec.describe "Shelves" do
  it "exists" do
    shelf = Shelves.new(1,5)

    expect(shelf).to be_an_instance_of(Shelves)
  end


  it "can determine the minimum number of shelves necessary" do
    shelf = Shelves.new(1,5)

    expect(shelf.jump).to eq(2)
  end
end