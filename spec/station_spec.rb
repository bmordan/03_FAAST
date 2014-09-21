require 'station'

describe Station do
  let(:station) { Station.new   }
  let(:train  ) { double :train }

  it "should have a name" do
    expect(station.name).to eq(station.object_id)
  end

  it "should have a platform to hold a train" do
    expect(station.arrived(train)).to eq(train)
  end

end