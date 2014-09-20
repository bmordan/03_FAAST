require 'station'

describe Station do
  let(:station   ) { Station.new       }
  let(:train     ) { double :train     }
  let(:passanger ) { double :passanger }
  let(:passangers) { double :passangers}

  it "has passangers waiting for trains" do
    expect(station.passangers).to be_a(Array)
  end

  it "passangers can enter a station" do
    expect(station.passangers.count).to eq(0)
    allow(passangers).to receive(:count).and_return(20)
    station.enter(passangers)
    expect(station.passangers.count).to eq(20) 
  end

  it "charges passangers boarding the train" do
    allow(passanger).to receive(:touchin).and_return(8)
    expect( station.board(passanger) ).to eq(8)
  end

end