class Passanger

  def initialize
    @balance = 30
  end

  def board(train)
    train.passangers
  end

  def alight(station)
    station.passangers << self
    train.passangers.delete(self)
  end

  def balance
    @balance
  end

  def touchin!
    @balance = @balance-2
  end

end