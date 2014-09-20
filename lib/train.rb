require_relative './coach'

class Train < Coach

  DEFAULT = 8

  def initialize(options = {})
    @coaches = []
    add = options.fetch(:coaches, DEFAULT)
    add <= 12 ? add.times {@coaches << Coach.new}  : DEFAULT.times {@coaches << :coach}
  end

  def coaches
    @coaches
  end

  def stop(station)
    station
  end

end