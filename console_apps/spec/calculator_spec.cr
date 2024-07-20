require "./spec_helper"

describe Calculator do
  describe "test Calculator add" do
    Calculator.add(5, 5).should eq 10
    Calculator.add(5, -5).should eq 0
    Calculator.add(-5, -5).should eq -10
  end
  describe "test Calculator sub" do
    Calculator.sub(5, 5).should eq 0
    Calculator.sub(5, -5).should eq 10
    Calculator.sub(-5, -5).should eq 0
  end
  describe "test Calculator mul" do
    Calculator.mul(5, 5).should eq 25
    Calculator.mul(5, -5).should eq -25
    Calculator.mul(-5, -5).should eq 25
  end
  describe "test Calculator div" do
    Calculator.div(5.0, 5.0).should eq 1.0
    Calculator.div(5.0, -5.0).should eq -1.0
    Calculator.div(-5.0, -5.0).should eq 1.0
    Calculator.div(-5.5, -5.5).should eq 1.0
  end
end
