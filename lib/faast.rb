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
    
    introduce_trains(0)
  end
 
  def introduce_trains(n)
    i = n
    trains.each do |train|
      stations[i].platform << train
      i == stations.count-1 ? i = 0: i=i+1
    end
  end

  def find_trains #this dont work
    indexes = []
    stations.each_with_index do |station, i|
      indexes << i unless station.platform == []
      station.platform.pop
    end
    indexes
  end

  def move_trains
    find_trains
    n = Random.new.rand(stations.count)
    introduce_trains(n)
  end


end