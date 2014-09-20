class Coach

  def spaces
    40 - passangers.count
  end

  def passangers
    @passangers ||= []
  end

  def board(passanger)
    passangers << passanger
  end 

end