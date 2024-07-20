module Filter
  extend self

  def negative(inp : Array) : Array
    inp.select { |v| v > 0 }
  end

  def positive(inp : Array) : Array
    inp.select { |v| v < 0 }
  end

  def odds(inp : Array) : Array
    inp.select { |v| v % 2 == 0 }
  end

  def evens(inp : Array) : Array
    inp.select { |v| v % 2 != 0 }
  end
end
