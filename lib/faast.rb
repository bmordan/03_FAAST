require_relative './train'
require_relative './station'

class Faast

  def trains
    @trains ||= []
  end

  def stations
    @stations ||= []
  end

  DEFAULT_STATIONS = 24
  DEFAULT_TRAINS = 22

  def initialize(options = {})
    s = options.fetch( :stations, DEFAULT_STATIONS )
    s.times {stations << Station.new}

    t = options.fetch( :trains, DEFAULT_TRAINS )
    t.times {trains << Train.new}

    stations.each do |station|
      station.arrive(trains.pop) unless trains.count == 0
    end
  end
 
  def move_trains 
    @stations.last.depart
  end


end