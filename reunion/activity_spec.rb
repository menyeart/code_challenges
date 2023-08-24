require './activity'
require 'pry'

RSpec. describe "Activty" do
  xit "exists" do
    activity = Activity.new("Brunch")

    expect(activity).to be_a(Activity)
  end

  xit "has attributes" do
    activity = Activity.new("Brunch")

    expect(activity.name).to eq("Brunch")
    expect(activity.name).to_not eq("Lunch")
  end

  xit "does not start with any participants" do
    activity = Activity.new("Brunch")

    expect(activity.participants).to eq({})
  end

  xit "can add participants" do
    activity = Activity.new("Brunch")

    expect(activity.participants).to eq({})

    activity.add_participant("Maria", 20)

    expect(activity.participants).to eq({"Maria" => 20})
  end

  it "return the total cost of the activity" do
    activity = Activity.new("Brunch")
    
    expect(activity.total_cost).to eq(0)

    activity.add_participant("Maria", 20)

    expect(activity.total_cost).to eq(20)

    activity.add_participant("Bill", 10)
    activity.add_participant("Jomah", 13)

    expect(activity.total_cost).to eq(43)
  end
end