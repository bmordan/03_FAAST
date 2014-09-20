require 'passanger'

describe Passanger do
  let(:passanger) { Passanger.new }

  it "should begin life with a balance of £30" do
    expect(passanger.balance).to eq(30)
  end
end