require_relative './coach'

class Train

  DEFAULT = 8

  def initialize(options = {})
    @coaches = []
    add = options.fetch(:coaches, DEFAULT)
    add < 13 ? add.times {@coaches << Coach.new}  : DEFAULT.times {@coaches << :coach}
  end

  def coaches
    @coaches
  end

  def stop(station)
    station
  end

end