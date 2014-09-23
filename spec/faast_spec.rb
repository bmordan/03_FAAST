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

  context "Control the trains" do

    it "should introduce trains into stations" do
      faast.introduce_trains
      expect(faast.stations[0].platform[0]).to eq(faast.trains[0]) 
    end

    it "should find all the stations with trains" do
      expect(faast.find_trains).to be_a(Array)
    end

    it "should pop into an array all the trains" do
      expect(faast.find_trains.count).to eq(3)
    end

    it "should pop all the trains in the stations" do
      expect(faast).to receive(:find_trains).exactly(1).times
      faast.move_trains 
    end

    it "should keep track of the times move_trains is called" do
      faast.move_trains
      expect(faast.move_train_position).to eq(1)
    end

    it "should insert the trains from the tunnel into the next station" do
      firsttrain = faast.stations[0].platform[0]
      faast.move_trains
      expect(faast.stations[1].platform[0]).to eq(firsttrain)
    end

    it "should zero the move_train_position stopping trains leaving the system" do
      limit = faast.stations.count - faast.trains.count
      limit.times {faast.move_trains}
      expect(faast.move_train_position).to eq(0)
    end

  end
end