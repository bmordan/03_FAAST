require_relative './coach'

class Station < Coach

  def enter(passangers)
    @passangers = passangers
  end

  def board(passanger)
    passanger.touchin(self)
  end

end