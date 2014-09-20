require 'coach'

describe Coach do

  let(:coach    ) { Coach.new          }
  let(:passanger) { double :passanger  }
  let(:station  ) { double :station    }
  let(:train    ) { double :train      }

  it "should have spaces for upto 40 passangers" do
    expect(coach.spaces).to eq(40)
  end

  it "can accomodate passangers" do
    expect(coach.passangers).to be_a(Array)
  end

  it "can be boarded by a passanger" do
    allow(train).to receive(:board).and_return(passanger)
    train.board(passanger)
    expect(coach.board(passanger)).to eq([passanger])
  end

  it "has limited spaces which passangers take up" do
    expect(coach.spaces).to eq(40)
    coach.board(passanger)
    expect(coach.spaces).to eq(39)
  end

  it "can not be boarded if there is no space" do
    40.times {coach.passangers << passanger}
    expect(coach.spaces).to eq(0)
    expect( coach.board(passanger) ).to eq(false)
  end

end