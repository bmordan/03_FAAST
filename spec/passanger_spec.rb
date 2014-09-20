require 'passanger'

describe Passanger do
  let(:passanger) { Passanger.new   }
  let(:station  ) { double :station }

  it "should begin life with a balance of £30" do
    expect(passanger.balance).to eq(30)
  end

  it "should be able to enter stations" do
    expect(passanger.alight(station)).to eq(station)
  end

end