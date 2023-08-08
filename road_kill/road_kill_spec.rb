require "./road_kill"
require "pry"

RSpec.describe "Road Kill" do
  describe "methods" do
    it "can determine if roadkill is an animal and return the name of the animal" do
      kill = RoadKill.new

      expect(kill.find_animal("==========h===yyyyyy===eeee=n==a========")).to eq("hyena")
    end

    it "can determine an animal with repeating letters" do
      kill = RoadKill.new

      expect(kill.find_animal("======pe====nnnnnn=======================n=n=ng====u==iiii=iii==nn========================n=")).to eq("penguin")
    end

    it "can determine an animal with backwards lettesr" do
      kill = RoadKill.new

      expect(kill.find_animal("=====r=rrr=rra=====eee======bb====b=======")).to eq("bear")
    end

    it "can determine an animal real duplicate letters in it's name" do
      kill = RoadKill.new

      expect(kill.find_animal("===b=b==========a=a=a=a=a=a=a=boo======n=====")).to eq("baboon")
    end
      

    it "can determine an animal real duplicate letters in it's name" do
      kill = RoadKill.new

      expect(kill.find_animal("====rraabbiitt==")).to eq("rabbit")
    end

    it "can determine an animal real duplicate letters in it's name in the beginning" do
      kill = RoadKill.new

      expect(kill.find_animal("=====k====r=a=vvvv==d=d=d=d=r==a=a=======")).to eq("aardvark")
    end

    it "can determine an animal real duplicate letters in it's name in the beginning" do
      kill = RoadKill.new

      expect(kill.find_animal("==a======a=a=a=lig===a=t====o=r=r=r=r==")).to eq("??")
    end

  end
end