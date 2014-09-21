require 'passanger'

describe Passanger do
  let(:passanger) { Passanger.new }

  it "should know all the stations" do
    expect(passanger.select_destination).to eq('333')
  end

end