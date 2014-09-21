require 'passanger'

describe Passanger do
  let(:stations  ) { double :stations }
  let(:passanger ) { Passanger.new    }
  let(:station   ) { double :station  }

  it "should be born with a balance of £30" do
    expect(passanger.balance).to eq(30)
  end

  it "can decide to get off at a station" do
    expect(passanger.destination?).to_not eq(nil)
  end


end