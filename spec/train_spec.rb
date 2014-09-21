require 'train'

describe Train do

  let(:train      ) { Train.new           }
  let(:station    ) { double :station     }
  let(:stationname) { double :stationname }
  let(:nextstation) { double :nextstation }
  let(:coach      ) { double :coach       }

  it "should know what station it is stopped at" do
    allow(coach).to receive(:new).and_return(coach)
    expect(train.at_station=station).to eq(station)
  end

  it "should have 8 coaches on init" do
    expect(train.coaches.count).to eq(8)
  end

end