class Train

  def initialize(options = {})
    @coaches = []
    options.fetch(:coaches,8).times {@coaches << :coach}
  end

  def coaches
    @coaches
  end

end