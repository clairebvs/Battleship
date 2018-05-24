class Square
  attr_reader :occupy,
              :result

  def initialize
    @occupy = false
    @result = ' '
  end

  def shot
    @result = 'H' if @occupy == true
    @result = 'M' if @occupy == false
  end

  def change_occupy
    @occupy = true
  end
end
