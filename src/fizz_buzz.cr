module FizzBuzz
  extend self

  def play(fizz : Int32, buzz : Int32, max : Int32, i : Int32 = 1, output : String = "") : String
    if i > max
      return output[..-3]
    end
    str : String = ""
    str += i % fizz == 0 ? "fizz" : ""
    str += i % buzz == 0 ? "buzz" : ""
    str += str == "" ? "#{i}" : ""
    output += "#{str}, "
    play(fizz, buzz, max, i + 1, output)
  end
end
