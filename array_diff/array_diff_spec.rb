require "./array_diff.rb"

describe ArrayDiff do
  it "does nothing when the difference array is empty" do
    expect(ArrayDiff.array_diff([1,2], [])).to eql([1,2])
  end

  it "removes an occurrance of one number from the first array when the second array has one number" do
    expect(ArrayDiff.array_diff([1,2], [1])).to eql([2])
  end

  it "removes all occurrances of one number from the first array when the second array has one number" do
    expect(ArrayDiff.array_diff([1, 1, 2], [1])).to eql([2])
  end

  it "removes all occurrances of two numbers from the first array when the second array has two numbers" do
    expect(ArrayDiff.array_diff([1, 1, 2], [1, 2])).to eql([])
  end
end
