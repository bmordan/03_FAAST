require 'train'

describe Train do

  let(:coach  ) { double :coach   }
  let(:train  ) { Train.new       }
  let(:station) { double :station }

  it "should have coaches" do
    expect(train.coaches).to be_a(Array)
  end

  it "should by default have 8 coaches" do
    expect(train.coaches.count).to eq(8)
  end

  it "can be initialized with upto 12 coaches" do
    train = Train.new(:coaches => 12)
    expect(train.coaches.count).to eq(12)
    train2 = Train.new(:coaches => 15)
    expect(train2.coaches.count).to eq(8)
  end

  it "stops at stations" do
    expect(train.stop(station)).to eq(station)
  end

end