class Passanger

  def initialize
    @balance = 30
  end

  def board(train)
    touchin!
    train.board(self)
  end

  def alight(station)
    station.alight(self)
    self
  end

  def balance
    @balance
  end

  def touchin!
    @balance = @balance-2
  end

end