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


end