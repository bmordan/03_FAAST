require 'station'

describe Station do
  let(:station   ) { Station.new        }
  let(:train     ) { double :train      }
  let(:coaches   ) { double :coaches    }
  let(:coach     ) { double :coach      }
  let(:passangers) { double :passangers }

  context "On initialize:" do

    it "should have a name when initialized" do
      expect(station.name).to eq(station.object_id)
    end

    it "should have a platform to hold a train" do
      expect(station.platform).to be_a(Array)
    end
    
    it "should have passangers waiting to board trains" do
      expect(station.passangers.count).not_to eq(0)
    end
  end

  context "Trains arriving at the station method:" do
    it "on arriving a train is added to the platform" do
      expect{station.arrive(train)}.to change{station.platform.count}.by 1
    end

    it "should release a train when a train departs" do
      station.arrive(train)
      expect{station.depart}.to change{station.platform.count}.by -1
    end

  end


end