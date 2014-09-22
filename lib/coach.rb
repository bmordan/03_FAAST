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
    if passanger.balance > 2
      passanger.touchin!
      passangers << passanger
    else
      false
    end
  end

  def alight
    alight = @passangers
    @passangers = []
    alight
  end

end