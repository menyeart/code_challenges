require 'pry'
require './reunion'
require './activity'

RSpec.describe "Reunion" do
  it "exists" do
    reunion = Reunion.new("1406 BE")

    expect(reunion).to be_a(Reunion)
  end

  it "has attributes" do
    reunion = Reunion.new("1406 BE")

    expect(reunion.name).to eq("1406 BE")
    expect(reunion.name).to_not eq("2301 BE")
  end

  it "has activities" do
    reunion = Reunion.new("1406 BE")

    expect(reunion.activities).to eq([])
  end

    it "can add activities" do
    reunion = Reunion.new("1406 BE")
    activity = Activity.new("Go to the Park")

    expect(reunion.activities).to eq([])

    reunion.add_activity(activity)

    expect(reunion.activities).to eq([activity])
  end
end