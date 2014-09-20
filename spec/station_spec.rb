require 'station'

describe Station do
  let(:station   ) { Station.new       }
  let(:train     ) { double :train     }
  let(:passanger ) { double :passanger }
  let(:passangers) { double :passangers}

  it "has passangers waiting for trains" do
    expect(station.passangers).to be_a(Array)
  end

  it "has a unique name by default" do
    expect(station.name).to include("Tube Station")
  end

  it "can be initialized with a crowd of commuters" do
    busyStation = Station.new(:crowd => 387)
    expect(busyStation.passangers.count).to eq(387)
  end
  
end