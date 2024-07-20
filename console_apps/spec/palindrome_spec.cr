require "./spec_helper"

describe Palindrome do
  describe "test Palindrome" do
    it "returns true for 1234321" do
      res = Palindrome.run "1234321"
      res.should eq true
    end
    it "returns true for DAD" do
      res = Palindrome.run "DAD"
      res.should eq true
    end
    it "returns false for Dad" do
      res = Palindrome.run "Dad"
      res.should eq false
    end
  end
end
