require 'faast'

describe Faast do
  let(:faast  ) { Faast.new       }
  let(:train  ) { double :train   }
  let(:station) { double :station }
  let(:coaches) { double :coaches }
  let(:coach  ) { double :coach   }
  context "init:" do
    it "should contain a number of trains" do
      expect(faast.trains).to be_a(Array)
    end

    it "should contain a number of stations" do
      expect(faast.stations).to be_a(Array)
    end

    it "can be inialized with trains and stations" do
      expect(faast.stations.count).to eq(12)
      expect(faast.trains.count).to eq(3)
    end
  end

  context "Moving the trains" do
    it "should move trains into stations" do
      faast.move_trains
      expect(faast.stations[0].platform[0]).to eq(faast.trains[0]) 
    end

    it "should find all the stations with trains" do
      expect(faast.find_trains).to be_a(Array)
    end

  end
end