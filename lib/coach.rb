require_relative './passanger'

class Coach

  def initialize
    Random.new.rand(40).times {passangers << Passanger.new}
  end

  def passangers
    @passangers ||= []
  end

  def spaces
    40-passangers.count
  end

  def board(passanger)
    passanger.balance > 2 ? @passangers << passanger : false
  end

  def alight(station)
    station.passangers
  end

end