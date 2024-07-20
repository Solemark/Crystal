require "./spec_helper"

describe Circles do
  describe "test Circles" do
    it "test area" do
      Circles.area(-1.0).should eq 0.0
      Circles.area(1.0).should eq 3.141592653589793
      Circles.area(4.0).should eq 50.26548245743669
    end
    it "test circ" do
      Circles.circ(-1.0).should eq 0.0
      Circles.circ(1.0).should eq 6.283185307179586
      Circles.circ(4.0).should eq 25.132741228718345
    end
  end
end
