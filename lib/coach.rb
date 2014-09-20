class Coach

  def spaces
    40 - passangers.count
  end

  def passangers
    @passangers ||= []
  end

end