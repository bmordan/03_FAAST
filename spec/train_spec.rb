require 'train'

describe Train do
  let(:train) {Train.new}

  it "should have coaches" do
    expect(train.coaches).to be_a(Array)
  end

end