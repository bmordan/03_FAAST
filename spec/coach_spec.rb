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
    start = coach.spaces
    allow(passanger).to receive(:balance).and_return(30)
    coach.board(passanger)
    expect(coach.spaces).to eq(start-1)
  end

  it "passangers can only board if they have the right balance" do
    allow(passanger).to receive(:balance).and_return(0)
    expect(coach.board(passanger)).to eq(false)
  end

end