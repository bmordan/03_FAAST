require_relative './station'

class Passanger

  def initialize
    @balance = 30
  end

  def board(train)
    train.coaches.each do |coach|
      if coach.spaces != 0
        touchin!
        coach.board(self)
        station.passangers.delete(self)
        return
      else
        puts 'This train is full!'
      end
    end
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