require_relative './passanger'

class Station

  def initialize
    @name = self.object_id
    @platform ||= []
    @passangers ||= []
    78.times {passangers << Passanger.new} 
  end

  def name
    @name
  end

  def platform
    @platform
  end

  def arrive(train)
    train.at_station = name unless train == nil
    platform.unshift(train)
  end

  def depart
    platform.pop
  end

  def passangers
    @passangers
  end

end