require 'faast'

describe Faast do
  let(:faast  ) { Faast.new       }
  let(:train  ) { double :train   }

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
    it "should introduce trains into stations" do
      faast.introduce_trains(0)
      expect(faast.stations[0].platform[0]).to eq(faast.trains[0]) 
    end

    it "should find all the stations with trains" do
      expect(faast.find_trains).to eq([0,1,2])
    end

    it "should empty a station" do
      expect(faast).to receive(:find_trains).exactly(1).times
      faast.move_trains 
    end

    it "trains should clear the platform of trains" do
      faast.find_trains
      expect(faast.stations[0].platform).to eq([])
    end

    it "will find a new set of stations" do
      start = faast.stations[0].platform[0]
      faast.move_trains
      expect(faast.stations[0].platform[0]).to_not eq(start)
    end

  end
end