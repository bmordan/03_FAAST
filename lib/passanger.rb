class Passanger

  def initialize
    @balance = 30
  end

  def board(train)
    train.board(self)
    touchin!
  end

  def alight(station)
    station.alight(self)
  end

  def balance
    @balance
  end

  def touchin!
    @balance = @balance-2
  end

end