class Airport
  attr_reader :hangar
  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @hangar = []
    @capacity = capacity
    @weather = Weather.new
  end

  def land(plane)
    if @weather.stormy?
    elsif duplicate?(plane)
    elsif full?
    elsif
      @hangar << plane
    end
  end

  def take_off(x)
    if empty?
    elsif
      @hangar.delete_at(x)
    end
  end

  def show
    print @hangar
  end

  private

  def full?
    if self.hangar.length >= @capacity
      raise "No hangar space left"
    end
  end

  def empty?
    if self.hangar.empty?
      raise "No planes waiting to take off"
    end
  end

  def duplicate?(plane)
    if self.hangar.include? plane
      raise "That plane is already in the hanger"
    end
  end
end
