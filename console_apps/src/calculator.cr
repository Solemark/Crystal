module Calculator
  extend self

  def add(x : Int32, y : Int32) : Int32
    x + y
  end

  def sub(x : Int32, y : Int32) : Int32
    x - y
  end

  def mul(x : Int32, y : Int32) : Int32
    x * y
  end

  def div(x : Float32, y : Float32) : Float32
    x / y
  end
end
