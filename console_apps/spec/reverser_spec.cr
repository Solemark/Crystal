require "./spec_helper"

describe Reverser do
  describe "test Reverser" do
    it "test same function" do
      res = Reverser.same [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      res.should eq [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    end
  end
end
