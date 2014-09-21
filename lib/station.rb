class Station

  def name
    @name = self.object_id
  end

  def arrived(train)
    train.station = @name
    @train = train
  end

end