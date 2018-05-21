class Ship

  attr_reader :length,
              :sunk

  def initialize
    @length = length
    @start_space = nil
    @end_space = nil
    @sunk = false
    @touched_by_hit = 0
  end

  def sunk?
    # @sunk = true
    if @length == @touched_by_hit
      @sunk = true
    end
  end

  def hit
    @touched_by_hit += 1
  end

  def length_ship
    @length = @start_space + @end_space
  end

end
