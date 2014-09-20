require_relative './coach'

class Station < Coach

  def enter(passangers)
    @passangers = passangers
  end

end