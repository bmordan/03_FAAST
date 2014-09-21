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

    # puts "Faast system initialized with #{s} stations,trains #{t} and #{p}"
    # puts "============================================="
    # puts "Start the Faast system with 'sys = Faast.new'"

  end
 
  def move_trains 
    @trains << @stations.last.depart
    @stations.each do |station|
      station.arrive(@trains.pop)
      @trains << station.depart
    end

  end


end