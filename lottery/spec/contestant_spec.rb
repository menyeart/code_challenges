require './lib/contestant'
require './lib/game'

describe 'Contestant' do
  it "exists" do
    matt = Contestant.new("Matt", "Enyeart", "30", "Co", 10)

    expect(matt).to be_an_instance_of(Contestant)
  end

  it "has attributes" do
    matt = Contestant.new("Matt", "Enyeart", 30, "CO", 10)

    expect(matt.first_name).to eq("Matt")
    expect(matt.last_name).to eq("Enyeart")
    expect(matt.age).to eq(30)
    expect(matt.state_of_residence).to eq("CO")
    expect(matt.spending_money).to eq(10)
  end

  it "can get a contestants full name" do
    matt = Contestant.new("Matt", "Enyeart", 30, "CO", 10)

    expect(matt.full_name).to eq("Matt Enyeart")
    expect(matt.full_name).to_not eq("Matt")
    expect(matt.full_name).to_not  eq("Enyeart")
  end

  it "can determine if a contenstant is from out of state" do
    matt = Contestant.new("Matt", "Enyeart", 30, "CO", 10)

    expect(matt.out_of_state?).to eq(false)
  end

  it "can display a contestants game interests" do
    matt = Contestant.new("Matt", "Enyeart", 30, "CO", 10)

    expect(matt.game_interests).to eq([])
  end

  it "can add a game to a contestant's game interests" do
    matt = Contestant.new("Matt", "Enyeart", 30, "CO", 10)

    expect(matt.game_interests).to eq([])

    matt.add_game_interest('Mega Millions')

    expect(matt.game_interests).to eq(['Mega Millions'])

    matt.add_game_interest("Pick 4")
    
    expect(matt.game_interests).to eq(['Mega Millions', "Pick 4"])
  end
end

