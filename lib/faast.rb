require_relative './train'
require_relative './station'

class Faast

  attr_accessor(:move_train_position)

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

    @move_train_position = 0
    
    introduce_trains
  end
 
  def introduce_trains
    i = 0
    trains.each do |train|
      stations[i].platform << train
      i=i+1
    end
  end

  def find_trains #this does work but needs refactoring
    tunnel = []
    stations.each do |station|
      tunnel << station.platform.pop unless station.platform == []
    end
    i = @move_train_position
    tunnel.each do |train|
      stations[i].platform << train
      i=i+1
    end
  end

  def move_trains
    @move_train_position+1 == stations.count - trains.count ? @move_train_position = 0 : @move_train_position = @move_train_position+1
    find_trains
  end


end