require 'coach'

class MockCoach; include Coach; end

describe Coach do
  let(:coach) {Coach.new}
end