require 'train'

describe Train do

  let(:train      ) { Train.new           }
  let(:station    ) { double :station     }
  let(:stationname) { double :stationname }
  let(:nextstation) { double :nextstation }

  it "should know what station it is stopped at" do
    expect(train.station=station).to eq(station)
  end

end