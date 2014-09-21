require_relative './coach'

class Train
  
  include Coach

  attr_accessor :at_station

  def initialize
    8.times {@coaches << :coach}
  end

  def coaches
    @coaches ||= []
  end

end