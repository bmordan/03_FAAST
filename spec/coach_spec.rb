require 'coach'


describe Coach do
  let(:coach    ) { Coach.new         }
  let(:passanger) { double :passanger }

  it "should hold upto 40 passangers" do
    expect(coach.spaces).to eq(40)
  end

  it "can be boarded by passangers" do
    allow(passanger).to receive(:balance).and_return(30)
    expect(coach.board(passanger)).to eq([passanger])
  end

  it "passangers take up a space" do
    allow(passanger).to receive(:balance).and_return(30)
    coach.board(passanger)
    expect(coach.spaces).to eq(39)
  end

  it "passangers can only board if they have the right balance" do
    allow(passanger).to receive(:balance).and_return(2)
    expect(coach.board(passanger)).to eq(false)
  end

end