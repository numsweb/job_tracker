class Calculator
  def initialize
    @result = 0
    @args = []
  end


  def push(n)
    @args << n
  end

  def add
    @result = @args[0] + @args[1]
  end

  def result
    @result
  end

  def multiply
    @result = @args[0] * @args[1]
  end

  def divide
    @result = @args[0] / @args[1]
  end

  def power
    @result = @args[0] ** @args[1]
  end
end