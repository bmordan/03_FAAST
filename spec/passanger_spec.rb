require 'passanger'

describe Passanger do
  let(:passanger) { Passanger.new   }
  let(:station  ) { double :station }
  let(:train    ) { double :train   }
  let(:coach    ) { double :coach   }

  it "should begin life with a balance of £30" do
    expect(passanger.balance).to eq(30)
  end

  it "should be able to enter stations" do
    expect(passanger.alight(station)).to eq(station)
  end

  it "should be able to board trains" do
    allow(train).to receive(:board).and_return(coach)
    expect(passanger.board(train)).to eq([train])
  end

end