require 'station'

describe Station do
  let(:station) { Station.new   }
  let(:train  ) { double :train }

  it "should have a name" do
    expect(station.name).to eq(station.object_id)
  end

  it "should have a name when initialized" do
    expect(station.name).to_not eq(nil)
  end

  it "should have a platform to hold a train" do
    allow(train).to receive(:station=)
    expect(station.arrived(train)).to eq(train)
  end

  it "should know what train has arrived" do
    allow(train).to receive(:station=)
    station.arrived(train)
    expect(station.train).to eq(train)
  end

  it "should tell a train what station it has arrived at" do
    allow(train).to receive(:station=)
    allow(train).to receive(:station).and_return(station.name)
    expect(train.station).to eq(station.name)
  end

end