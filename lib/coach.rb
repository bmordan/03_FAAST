class Coach

  def passangers
    @passangers ||= []
  end

  def spaces
    40-passangers.count
  end

  def board(passanger)
    passanger.balance > 2 ? passangers << passanger : false
  end

end