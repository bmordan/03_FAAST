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
    expect(station.platform).to be_a(Array)
  end

  it "should know what train has arrived" do
    allow(train).to receive(:at_station=)
    station.arrive(train)
    expect(station.platform[0]).to eq(train)
  end

  it "should tell a train what station it has arrived at" do
    allow(train).to receive(:at_station=)
    allow(train).to receive(:station).and_return(station.name)
    expect(train.station).to eq(station.name)
  end

  it "should release a train when a train departs" do
    allow(train).to receive(:at_station=)
    station.arrive(train)
    expect(station.depart).to eq(train)
  end

  it "should have passangers waiting to board trains" do
    expect(station.passangers.count).not_to eq(0)
  end

end