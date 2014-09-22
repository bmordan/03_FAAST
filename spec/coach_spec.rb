require 'coach'

describe Coach do
  let(:coach    ) { Coach.new         }
  let(:passanger) { double :passanger }

  it "should hold upto 40 passangers" do
    expect(coach.spaces).not_to eq(40)
  end

  it "can be boarded by passangers" do
    allow(passanger).to receive(:balance).and_return(30)
    expect(coach.board(passanger)).not_to eq(false)
  end

  it "passangers take up a space" do
    allow(passanger).to receive(:balance).and_return(30)
    expect{coach.board(passanger)}.to change{coach.spaces}.by -1
  end

  it "passangers can only board if they have the right balance" do
    allow(passanger).to receive(:balance).and_return(0)
    expect(coach.board(passanger)).to eq(false)
  end

  it "should return false if passanger has no balance" do
    allow(passanger).to receive(:balance).and_return(0)
  end

  it "should split out passangers when they alight" do
    expect{coach.alight}.to change{coach.passangers}
  end

end