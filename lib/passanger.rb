require_relative './train'

class Passanger < Train

  def initialize
    @balance = 30
  end

  def balance
    @balance
  end

  def alight(station)
    station
  end

  def touchin!
    @balance = @balance-2
  end

end