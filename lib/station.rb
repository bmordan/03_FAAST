require_relative './passanger'

class Station

  def initialize
    @name = self.object_id
    @platform ||= []
    @passangers ||= []
    20.times {passangers << Passanger.new} 
  end

  def name
    @name
  end

  def platform
    @platform
  end

  def arrive(train)
    platform.unshift(train) unless train.nil?
  end

  def depart
    @platform.pop
  end

  def passangers
    @passangers
  end

end