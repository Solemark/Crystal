require "./spec_helper"

describe DiceRoll do
  describe "test DiceRoll" do
    it "test roll function" do
      max : Int32 = 20
      res : Int32 = DiceRoll.roll max
      res.should be > 0
      res.should be <= max
    end
  end
end
