require 'coach'

class MockCoachClass; include Coach; end

describe Coach do

  let(:coach    ) { MockCoachClass.new }
  let(:passanger) { double :passanger  }
  let(:station  ) { double :station    }

  it "should have spaces for upto 40 passangers" do
    expect(coach.spaces).to eq(40)
  end

  it "can accomodate passangers" do
    expect(coach.passangers).to be_a(Array)
  end

  it "can be boarded by a passanger" do
    coach.board(passanger)
    expect(coach.passangers.count).to eq(1)
  end

  it "a passanger should take up a space" do
    coach.board(passanger)
    expect(coach.spaces).to eq(39)
  end

  it "should allow passangers to alight at a station" do
    coach.board(passanger)
    expect(coach.spaces).to eq(39)
    coach.alight(station)
    expect(coach.passangers).to eq([])
  end

end