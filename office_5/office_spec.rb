require "./office"
require "pry"

RSpec.describe "Office" do

  it "exists" do
    office = Office.new([["XXX", 3], ["XXXXX", 6], ["XXXXXX", 9]], 4)
    
    expect(office).to be_an_instance_of(Office)
  end

  it "gets chairs" do
    office = Office.new([["XXX", 3], ["XXXXX", 6], ["XXXXXX", 9]], 4)
    
    expect(office.get_chairs).to eq([0,1,3])
  end

  it "gets chairs for a large office" do
    office = Office.new([["XXX", 1], ["XXXXXX", 6], ["X", 2], ["XXXXXX", 8], ["X", 3], ["XXX", 1]], 5)
    
    expect(office.get_chairs).to eq([0, 0, 1, 2, 2])
  end

  it "doesn't search for chairs if you already have enough" do
    office = Office.new([["XX", 2], ["XXXX", 6], ["XXXXX", 4]], 0)
    
    expect(office.get_chairs).to eq("Game On")
  end

  it "tells you if there are not enough chairs" do
    office = Office.new([["XX", 2], ["XXXX", 6], ["XXXXX", 4]], 8)
    
    expect(office.get_chairs).to eq("Not enough!")
  end

  it "gets chairs for a small office" do
    office = Office.new([["XX", 2], ["XXXX", 6], ["XXXXX", 4]], 2)
    
    expect(office.get_chairs).to eq([0, 2])
  end

  it "works for random edge case tests" do
    office = Office.new([["XXX", 9], ["XXXXXXXXX", 4], ["XXXXX", 10]], 7)
    
    expect(office.get_chairs).to eq([6,0,1])
  end

    it "works for more random edge case tests" do
    office = Office.new([["XXXXXXXX", 9], ["XXXXXXXX", 8], ["XXXXXXX", 4], ["X", 3], ["XX", 3], ["XXXXXX", 3], ["XX", 5], ["X", 5], ["", 2], ["X", 0], ["XXXXX", 7]], 1)
    
    expect(office.get_chairs).to eq([1])
  end
end