require "./spec_helper"

describe Reducer do
  input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  describe "test Reducer" do
    it "test add" do
      res = Reducer.add input
      res.should eq 55
    end
    it "test sub" do
      res = Reducer.sub input
      res.should eq -53
    end
    it "test mul" do
      res = Reducer.mul input
      res.should eq 3628800
    end
    it "test div" do
      res = Reducer.div input
      res.should be_close 2.76e-7, 0.01
    end
  end
end
