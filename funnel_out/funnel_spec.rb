require "./funnel"
require "pry"

RSpec.describe "Funnel" do
    before(:each) do 
      @funnel = Funnel.new
    end

    xit "exists" do
      expect(@funnel).to be_an_instance_of(Funnel)
    end

    xit "can create strings out of 1 layer funnels" do
      expect(@funnel.build_string([["q"]])).to eq("q")
    end

    xit "can create strings out of 1 layer funnels" do
      expect(@funnel.build_string([["b","c"],["a"]])).to eq("abc")
    end
    

    xit "can create strings out of 1 layer funnels" do
      expect(@funnel.build_string([["d","a","c"],["b","e"],["f"]])).to eq("fbadec")
    end

    it "can create strings out of 1 layer funnels" do
      expect(@funnel.build_string([["a","e","c","f"],["d","i","h"],["j","g"],["b"]])).to eq("bghcfiejda")
end
  
  
end