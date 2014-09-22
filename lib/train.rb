require_relative './coach'

class Train

  attr_accessor :at_station

  def initialize
    8.times {coaches << Coach.new}
  end

  def coaches
    @coaches ||= []
  end

  def alight
    alighting = []
    coaches.each do |coach|
      coach.passangers.each do |passanger|
        if passanger.destination? == true
          alighting << passanger
            coach.passangers.delete(passanger)
        end 
      end
    end
    return alighting
  end

end