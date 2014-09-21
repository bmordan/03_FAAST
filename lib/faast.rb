require_relative './train'
require_relative './station'
require_relative './passanger'

class Faast

  attr_reader = :stations

  def trains
    @trains ||= []
  end

  def stations
    @stations ||= []
  end

  DEFAULT_STATIONS = 24
  DEFAULT_TRAINS = 22
  DEFAULT_PASSANGERS = 7000

  def initialize(options = {})
    s = options.fetch( :stations, DEFAULT_STATIONS )
    s.times { stations << Station.new }

    t = options.fetch( :trains, DEFAULT_TRAINS )
    t.times { trains << Train.new }

    p = options.fetch( :passangers, DEFAULT_PASSANGERS )

    stations.each do |station|
      station.arrive(trains.pop) unless trains.count == 0
    end

  end
 
  def move_trains 
    stations.each do |station|
      trains << station.depart
    end
    trains.shuffle
    stations.each do |station|
      station.arrive(trains.pop) unless trains.count == 0
    end    
  end


end