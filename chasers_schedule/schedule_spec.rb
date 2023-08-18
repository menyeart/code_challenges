require './schedule.rb'
require 'pry'

RSpec.describe "Schedule" do
  it "exists" do
    sched = Schedule.new(2,4)

    expect(sched).to be_an_instance_of(Schedule)
  end

  it "can determine the longest distance a runner can go" do
    sched = Schedule.new(2,4)

    expect(sched.longest_distance).to eq(10)
  end

  it "can determine the longest distance a runner can go" do
    sched = Schedule.new(2, 3)

    expect(sched.longest_distance).to eq(8)
  end

  it "can determine the longest distance a runner can go" do
    sched = Schedule.new(1, 1)

    expect(sched.longest_distance).to eq(2)
  end

  it "can determine the longest distance a runner can go" do
    sched = Schedule.new(4, 8)

    expect(sched.longest_distance).to eq(37)
  end



end