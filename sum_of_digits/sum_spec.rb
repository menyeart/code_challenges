require "./sum"
require 'pry'


RSpec.describe "Sum" do
  it "exists" do
    sum = Sum.new

    expect(sum.digital_root(16)).to eq(7)
    expect(sum.digital_root(942)).to eq(6)
    expect(sum.digital_root(132189)).to eq(6)
    expect(sum.digital_root(493193)).to eq(2)
    expect(sum.digital_root(1)).to eq(1)
    expect(sum.digital_root(0)).to eq(0
    )
  end
end
