require 'faast'

describe Faast do
  let(:faast)   { Faast.new       }
  let(:train)   { double :train   }
  let(:station) { double :station }

  it "should contain a number of trains" do
    expect(faast.trains).to be_a(Array)
  end

  it "should contain a number of stations" do
    expect(faast.stations).to be_a(Array)
  end

  it "can be inialized with trains and stations" do
    expect(faast.stations.count).to eq(24)
    expect(faast.trains.count).to eq(0)
  end

  # it "will be circular the last stop will lead to the first" do
  #   allow(train).to receive(:at_station=)
  #   expect(faast.move_trains).to be(nil)
  # end

  it "should move trains from station to station" do
    allow(train).to receive(:at_station=)
    allow(station).to receive(:arrive)
    allow(station).to receive(:depart)
    init_name = faast.stations[0].platform[0]
    faast.move_trains
    expect(faast.stations[0].platform[0]).not_to eq(init_name)
  end

end