module DiceRoll
  extend self

  def roll(max : Int32) : Int32
    Random.rand max + 1
  end
end
