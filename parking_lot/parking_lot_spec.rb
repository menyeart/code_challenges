require './parking_lot'
require 'pry'

describe "ParkingLot" do
  it "exists" do
    parking_lot = ParkingLot.new(5)

    expect(parking_lot).to be_an_instance_of(ParkingLot)
  end

  it "has a size" do
    parking_lot = ParkingLot.new(5)
  
    expect(parking_lot.lots).to be_a(Array)
    expect(parking_lot.lots.count).to eq(5)
    parking_lot.lots.each do |spot|
      expect(spot).to eq(nil)
    end
  end

  it "can park cars in the lot" do
    parking_lot = ParkingLot.new(5)
    parking_lot.park("Lexus")
   
    expect(parking_lot.lots.first).to eq("Lexus")
    expect(parking_lot.lots.last).to eq(nil)

    parking_lot.park("Toyota")

    expect(parking_lot.lots.first).to eq("Lexus")
    expect(parking_lot.lots[1]).to eq("Toyota")
  end

  it "knows when the lot is full" do
    parking_lot = ParkingLot.new(5)
    parking_lot.park("Lexus")
    parking_lot.park("Toyota")
    parking_lot.park("Ford")
    parking_lot.park("Honda")
    parking_lot.park("Chevy")

    expect(parking_lot.park("Tesla")).to eq("The parking lot is currently full")

    parking_lot.park("Tesla")

    expect(parking_lot.lots).to eq(["Lexus", "Toyota", "Ford", "Honda", "Chevy"])
  end

  it "can remove a car" do
    parking_lot = ParkingLot.new(5)
    parking_lot.park("Lexus")
    parking_lot.park("Toyota")
    parking_lot.park("Ford")
    parking_lot.park("Honda")
    parking_lot.park("Chevy")

    expect(parking_lot.lots.include?("Toyota")).to eq(true)

    parking_lot.remove_car("Toyota")
    expect(parking_lot.lots.include?("Toyota")).to eq(false)
  end

  it "can count the number of spots in the lot" do
    parking_lot = ParkingLot.new(5)
    
    expect(parking_lot.size).to eq(5)
  end
end