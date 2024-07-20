require "./spec_helper"

describe Filter do
  describe "test filter" do
    inp = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
    it "test negative" do
      res = Filter.negative inp
      res.should eq [1, 2, 3, 4, 5]
    end
    it "test positive" do
      res = Filter.positive inp
      res.should eq [-5, -4, -3, -2, -1]
    end
    it "test odds" do
      res = Filter.odds inp
      res.should eq [-4, -2, 0, 2, 4]
    end
    it "test evens" do
      res = Filter.evens inp
      res.should eq [-5, -3, -1, 1, 3, 5]
    end
  end
end
