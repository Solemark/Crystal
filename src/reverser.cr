module Reverser
  extend self

  def same(input : Array) : Array
    x, y, i, j = 0, 0, 0, input.size - 1
    while i <= j
      x = input[i]
      y = input[j]
      input[i] = y
      input[j] = x
      i += 1
      j -= 1
    end
    input
  end
end
