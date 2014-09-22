require_relative './train'
require_relative './station'

class Faast

  attr_reader = :stations

  def trains
    @trains ||= []
  end

  def stations
    @stations ||= []
  end

  DEFAULT_STATIONS = 12
  DEFAULT_TRAINS = 3

  def initialize(options = {})
    s = options.fetch( :stations, DEFAULT_STATIONS )
    s.times { stations << Station.new }

    t = options.fetch( :trains, DEFAULT_TRAINS )
    t.times { trains << Train.new }
    
    #move_trains
  end
 
  def move_trains
    i = 0
    trains.each do |train|
      stations[i].platform << train
      i=i+1
    end
  end


end