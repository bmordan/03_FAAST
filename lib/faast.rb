class Faast

  DEFAULT_STATIONS = 24
  DEFAULT_TRAINS = 22

  def initialize(options = {})
    s = options.fetch( :stations, DEFAULT_STATIONS )
    s.times {stations << :station}
    t = options.fetch( :trains, DEFAULT_TRAINS )
    t.times {trains << :train}
  end

  def trains
    @trains ||= []
  end

  def stations
    @stations ||= []
  end


end