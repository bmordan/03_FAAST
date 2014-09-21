require 'coach'


describe Coach do
  let(:coach    ) { Coach.new         }
  let(:passanger) { double :passanger }

  it "should hold upto 40 passangers" do
    expect(coach.spaces).to eq(40)
  end

  it "can be boarded by passangers" do
    expect(coach.board(passanger)).to eq(passanger)
  end

  it "passangers take up a space" do
    coach.board(passanger)
    expect(coach.spaces).to eq(39)
  end


end