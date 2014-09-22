require 'train'

describe Train do

  let(:train      ) { Train.new           }
  let(:station    ) { double :station     }
  let(:coach      ) { double :coach       }
  let(:passangers ) { double :passangers  }
  let(:passanger  ) { double :passanger   }

  context "Train on init" do

    it "should have 8 coaches on init" do
      expect(train.coaches.count).to eq(8)
    end

    it "should have some passangers in the coaches" do
      expect(train.coaches[0].passangers.count).not_to eq(0)
    end
  end

  context "Train at station" do
    it "should expose it's alighing passangers on arrive" do
      allow(coach).to receive(:alight)
      expect(train.arrive).to be_a(Array)
    end
  end
  
end