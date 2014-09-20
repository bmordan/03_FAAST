require 'passanger'

describe Passanger do
  let(:passanger ) { Passanger.new      }
  let(:passangers) { double :passangers }
  let(:station   ) { double :station    }
  let(:train     ) { double :train      }
  let(:coach     ) { double :coach      }

  it "should begin life with a balance of £30" do
    expect(passanger.balance).to eq(30)
  end

  it "should pay £2 for a journey" do
    passanger.touchin!
    expect(passanger.balance).to eq(28)
  end

  it "should be able to board trains" do
    allow(train).to receive(:passangers).and_return(passanger)
    expect(passanger.board(train)).to eq(passanger)
  end

  it "should be able to alight from a train" do
    allow(station).to receive(:passangers).and_return(passanger)
    expect(passanger.alight(station)).to eq(passanger)
  end

end