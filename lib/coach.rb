class Coach

  def spaces
    40 - passangers.count
  end

  def passangers
    @passangers ||= []
  end

  def board(passanger)
    if spaces != 0
      passangers << passanger
    else
      false
    end
  end 

end