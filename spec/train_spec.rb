require 'train'

describe Train do

  let(:train      ) { Train.new           }
  let(:station    ) { double :station     }
  let(:coach      ) { double :coach       }
  let(:passangers ) { double :passangers  }
  let(:passanger  ) { double :passanger   }

  it "should know what station it is stopped at" do
    allow(coach).to receive(:new).and_return(coach)
    expect(train.at_station=station).to eq(station)
  end

  it "should have 8 coaches on init" do
    expect(train.coaches.count).to eq(8)
  end

  it "should allow passangers to alight when at a station" do
    allow(station).to receive(:passangers).and_return([])
    expect(train.coaches[0].alight(station)).to be_a(Array)
  end

  it "should have some passangers in the coaches" do
    expect(train.coaches[0].passangers.count).not_to eq(0)
  end

  it "should return the passangers at a station" do
    expect(train.alight).to be_a(Array)
  end

  it "can be boarded by passangers from the station" do
    allow(coach).to receive(:board)
    allow(passangers).to receive(:each)
    expect(train.enter(passangers)).to eq(passangers) 
  end

end