require 'faast'

describe Faast do
  let(:faast  ) { Faast.new       }
  let(:train  ) { double :train   }
  let(:station) { double :station }
  let(:coaches) { double :coaches }
  let(:coach  ) { double :coach   }

  it "should contain a number of trains" do
    expect(faast.trains).to be_a(Array)
  end

  it "should contain a number of stations" do
    expect(faast.stations).to be_a(Array)
  end

  it "can be inialized with trains and stations" do
    expect(faast.stations.count).to eq(12)
    expect(faast.trains.count).to eq(0)
  end

end