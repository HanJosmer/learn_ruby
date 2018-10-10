class Timer
  attr_writer :seconds, :minutes
  
  def initialize
    @seconds = 0
    @minutes = 0
  end
  
  def seconds
    @seconds
  end

  def minutes
    @seconds / 60
  end

  def hours
    self.minutes / 60
  end

  def time_string
    [format("%2.2d", self.hours), format("%2.2d", self.minutes % 60), format("%2.2d", @seconds % 60)].join(":")
  end
end