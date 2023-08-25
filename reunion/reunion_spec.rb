require 'pry'
require './reunion'
require './activity'

RSpec.describe "Reunion" do
  xit "exists" do
    reunion = Reunion.new("1406 BE")

    expect(reunion).to be_a(Reunion)
  end

  xit "has attributes" do
    reunion = Reunion.new("1406 BE")

    expect(reunion.name).to eq("1406 BE")
    expect(reunion.name).to_not eq("2301 BE")
  end

  xit "has activities" do
    reunion = Reunion.new("1406 BE")

    expect(reunion.activities).to eq([])
  end

  xit "can add activities" do
    reunion = Reunion.new("1406 BE")
    activity = Activity.new("Go to the Park")

    expect(reunion.activities).to eq([])

    reunion.add_activity(activity)

    expect(reunion.activities).to eq([activity])
  end

  xit "can tell us the total cost of the event" do
    reunion = Reunion.new("1406 BE")
    activity_1 = Activity.new("Go to the Park")
    activity_1.add_participant("Maria", 20)
    activity_1.add_participant("Bob ", 10)
    activity_2 = Activity.new("Go out on the town")
    activity_2.add_participant("Sunita", 200)
    activity_2.add_participant("Jomah ", 500)
    reunion.add_activity(activity_1)
    reunion.add_activity(activity_2)

    expect(reunion.total_cost).to eq(730)
  end

  xit "list a reunions guests and what they owe for the entire reunion" do
    reunion = Reunion.new("1406 BE")
    activity_1 = Activity.new("Go to the Park")
    activity_1.add_participant("Maria", 40)
    activity_1.add_participant("Bob", 60)
    activity_1.add_participant("Sunita", 0)
    activity_1.add_participant("Jomah", 0)
    
    activity_2 = Activity.new("Go out on the town")
    activity_2.add_participant("Sunita", 200)
    activity_2.add_participant("Jomah", 200)
    activity_2.add_participant("Maria", 0)
    activity_2.add_participant("Bob", 0)
    reunion.add_activity(activity_1)
    reunion.add_activity(activity_2)

    expect(reunion.total_owed).to eq({"Maria" => 85, "Bob" => 65, "Sunita" => -75, "Jomah" => -75 })
  end

  it "list a reunions guests and what they owe for the entire reunion" do
    reunion = Reunion.new("1406 BE")
    activity_1 = Activity.new("Go to the Park")
    activity_1.add_participant("Maria", 40)
    activity_1.add_participant("Bob", 60)
    activity_1.add_participant("Sunita", 0)
    activity_1.add_participant("Jomah", 0)
    
    activity_2 = Activity.new("Go out on the town")
    activity_2.add_participant("Sunita", 200)
    activity_2.add_participant("Jomah", 200)
    activity_2.add_participant("Maria", 0)
    activity_2.add_participant("Bob", 0)
    reunion.add_activity(activity_1)
    reunion.add_activity(activity_2)

    expect(reunion.print_summary).to eq("Maria owes 85$\nBob owes 65$\nSunita owes -75$\nJomah owes -75$\n")
  end
end