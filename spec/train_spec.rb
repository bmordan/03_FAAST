require 'train'

describe Train do

  let(:coach) {double :coach}
  let(:train) {Train.new    }

  it "should have coaches" do
    expect(train.coaches).to be_a(Array)
  end

  it "should by default have 8 coaches" do
    expect(train.coaches.count).to eq(8)
  end

end