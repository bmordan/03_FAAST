require_relative './coach'

class Station < Coach

  DEFAULT = "Tube Station #{self.object_id.to_s[0..3]}"

  def initialize(options = {})
    @name = "#{options.fetch(:name,DEFAULT)} #{self.object_id.to_s[0..3]}"
  end

  def name
    @name
  end

  def enter(passangers)
    @passangers = passangers
  end

  def board(passanger)
    passanger.touchin(self)
  end

end