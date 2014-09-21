class Coach

  def passangers
    @passangers ||= []
  end

  def spaces
    40-passangers.count
  end

  def board(passanger)
    passangers << passanger
    passanger
  end

end