require './sample'

describe "Sample" do
  it "exists" do
    sample = Sample.new("Sample")

    expect(sample).to be_an_instance_of(Sample)
  end


  it "has a name" do
    sample = Sample.new("Sample")

    expect(sample.name).to eq("Sample")
    expect(sample.name).to_not eq("SName")
  end
end