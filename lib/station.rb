require_relative './coach'
require_relative './passanger'

class Station < Coach

  DEFAULT_NAME = "Tube Station #{self.object_id.to_s[0..3]}"
  DEFAULT_CROWD = 0

  def initialize(options = {})
    @name = DEFAULT_NAME
    @crowd = options.fetch(:crowd,DEFAULT_CROWD)
    @crowd.times { passangers << Passanger.new } unless @crowd == 0
  end

  def name
    @name
  end

end