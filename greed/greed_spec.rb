require "./greed.rb"

describe "greed" do
  it "scores a game with no 1's 5's or triples as 0" do
    expect(Greed.score([2, 2, 3, 4, 4])).to eql(0)
  end

  it "scores a game with one 1 as 100" do
    expect(Greed.score([1, 2, 3, 4, 4])).to eql(100)
  end

  it "scores a game with one 5 as 50" do
    expect(Greed.score([2, 2, 3, 4, 5])).to eql(50)
  end

  it "scores a game with one 1 and one 5 as 150" do
    expect(Greed.score([2, 1, 3, 4, 5])).to eql(150)
  end

  it "scores a game with three 2's as 200" do
    expect(Greed.score([2, 2, 3, 4, 2])).to eql(200)
  end

  it "scores a game with three 3's as 300" do
    expect(Greed.score([2, 3, 3, 3, 2])).to eql(300)
  end

  it "scores a game with three 4's as 400" do
    expect(Greed.score([2, 4, 4, 4, 2])).to eql(400)
  end

  it "scores a game with three 6's as 600" do
    expect(Greed.score([2, 6, 6, 6, 2])).to eql(600)
  end

  it "scores a game with three 1's as 1000" do
    expect(Greed.score([2, 1, 1, 1, 2])).to eql(1000)
  end

  it "scores a game with three 5's as 500" do
    expect(Greed.score([2, 5, 5, 5, 2])).to eql(500)
  end

  it "scores a game with three 6's one 1 and one 5 as 750" do
    expect(Greed.score([1, 6, 5, 6, 6])).to eql(750)
  end
end
