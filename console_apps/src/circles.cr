module Circles
  extend self

  def area(r : Float64) : Float64
    if check r
      return 0.0
    end
    Math::PI * (r*r)
  end

  def circ(r : Float64) : Float64
    if check r
      return 0.0
    end
    2.0 * Math::PI * r
  end

  def check(r : Float64) : Bool
    r < 0.0
  end
end
