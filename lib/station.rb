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

  def arrived(train)
    train.station = @name
    @train = train
  end

end