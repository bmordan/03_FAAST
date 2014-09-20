require 'coach'

class MockCoachClass; include Coach; end

describe Coach do

  let(:coach    ) { MockCoachClass.new }
  let(:passanger) { double :passanger  }

  it "should have spaces for upto 40 passangers" do
    expect(coach.spaces).to eq(40)
  end

  it "can accomodate passangers" do
    expect(coach.passangers).to be_a(Array)
  end

end