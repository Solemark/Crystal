module Reducer
  extend self

  def add(data : Array) : (Int32 | Float64)
    data.reduce { |t, n| t + n }
  end

  def sub(data : Array) : (Int32 | Float64)
    data.reduce { |t, n| t - n }
  end

  def mul(data : Array) : (Int32 | Float64)
    data.reduce { |t, n| t * n }
  end

  def div(data : Array) : (Float64 | Int32)
    data.reduce { |t, n| t / n }
  end
end
