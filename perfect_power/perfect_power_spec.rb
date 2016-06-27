require "./perfect_power.rb"

describe PerfectPower do
  it "returns nil if the number is not a perfect power" do
    expect(PerfectPower.isPP(2)).to be_nil
  end

  it "returns a [2,2] when given 4" do
    expect(PerfectPower.isPP(4)).to eql [2, 2]
  end

  it "returns a [2,3] when given 8" do
    expect(PerfectPower.isPP(8)).to eql [2, 3]
  end

  it "returns a [2,4] when given 16" do
    expect(PerfectPower.isPP(16)).to eql [2, 4]
  end

  it "returns [2,5] when given 32" do
    expect(PerfectPower.isPP(32)).to eql [2, 5]
  end

  it "returns [3,2] when given 9" do
    expect(PerfectPower.isPP(9)).to eql [3, 2]
  end

  it "returns [6,2] when given 36" do
    expect(PerfectPower.isPP(36)).to eql [6, 2]
  end
end
