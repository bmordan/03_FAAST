require 'station'

describe Station do
  let(:station   ) { Station.new        }
  let(:train     ) { double :train      }
  let(:coaches   ) { double :coaches    }
  let(:coach     ) { double :coach      }

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

    it "can accept no train arriving" do
      expect{station.arrive(nil)}.not_to change{station.platform.count}
    end

    it "should release a train when a train departs" do
      station.arrive(train)
      expect{station.depart}.to change{station.platform.count}.by -1
    end

  end    

  context "All ABOARD!" do

    it "should have a allaboard method" do
      expect(station).to respond_to(:allaboard)
    end

    it "allaboard should be nil when no train is at the station" do
      expect(station.allaboard(nil)).to eq(nil)
    end

    it "should reduce platform of passangers" do
      allow(coach).to receive(:spaces).and_return(20)
      allow(coach).to receive(:board)
      expect{station.allaboard(train)}.to change{station.passangers} 
    end

   end

   context "disembarking" do
     it "should fill the station with passangers from the train" do
       
     end
   end




end