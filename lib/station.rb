class Station

  def initialize
    @name = self.object_id
  end

  def name
    @name
  end

  def train
    @train
  end

  def platform
    @platform ||= []
  end

  def arrive(train)
    train.at_station = @name
    platform << train
    @train = train
  end

  def depart
    platform.pop
  end

end