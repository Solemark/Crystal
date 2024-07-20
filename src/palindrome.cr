module Palindrome
  extend self

  def run(input : String) : Bool
    x = 0
    y = input.size - 1
    loop do
      if x >= y
        return true
      end
      if input[x] != input[y]
        return false
      end
      x += 1
      y -= 1
    end
  end
end
