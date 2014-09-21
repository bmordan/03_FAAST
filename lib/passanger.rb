require_relative 'faast'

class Passanger

  def initialize(options = {})
    @balance = 30
  end

  def destination?
    [true,false].sample
  end

  def balance
    @balance
  end
  
  def touchin!
    @balance = @balance-2
  end


end