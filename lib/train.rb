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

  def board(passangers)
    coaches.each do |coach|
      (coach.spaces).times { coach.board(passangers.pop) }
    end
  end

  def empty(passangers)
    coaches.each do |coach|
      coach.passangers.each do |passanger|
        passangers << passanger
        coach.passangers.delete(passanger)
      end
    end    
  end

end