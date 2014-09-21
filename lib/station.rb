require_relative './faast'
class Station

  def name
    @name = self.object_id
  end

  def arrived(train)
    @train = train
  end

end