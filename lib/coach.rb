module Coach

  def spaces
    40
  end

  def passangers
    @passangers ||= []
  end

  def board(passanger)
    passangers << passanger
  end

end