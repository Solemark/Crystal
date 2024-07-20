require "./spec_helper"

describe FizzBuzz do
  describe "test FizzBuzz" do
    it "test play" do
      res : String = FizzBuzz.play 3, 5, 20
      res.should eq "1, 2, fizz, 4, buzz, fizz, 7, 8, fizz, buzz, 11, fizz, 13, 14, fizzbuzz, 16, 17, fizz, 19, buzz"
    end
  end
end
