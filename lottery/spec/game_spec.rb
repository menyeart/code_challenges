require './lib/contestant'
require './lib/game'

describe 'Game' do
  
  it "exists" do
    pick_4 = Game.new('Pick 4', 2)

    expect(pick_4).to be_an_instance_of(Game)
  end

  it "has attributes" do
    pick_4 = Game.new('Pick 4', 2)

    expect(pick_4).to be_an_instance_of(Game)
    expect(pick_4.name).to eq("Pick 4")
    expect(pick_4.cost).to eq(2)
    expect(pick_4.national_drawing).to eq(false)
  end
end