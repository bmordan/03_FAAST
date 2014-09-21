require 'faast'

describe Faast do
  let(:faast) { Faast.new     }
  let(:train) { double :train }

  it "should contain a number of trains" do
    expect(faast.trains).to be_a(Array)
  end

  it "should contain a number of stations" do
    expect(faast.stations).to be_a(Array)
  end

end