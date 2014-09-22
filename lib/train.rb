require_relative './coach'

class Train

  attr_accessor :at_station

  def initialize
    8.times {coaches << Coach.new}
  end

  def coaches
    @coaches ||= []
  end

  def arrive
    arrive = []
    coaches.each {|coach| arrive << coach.alight }
    arrive.flatten
  end

end