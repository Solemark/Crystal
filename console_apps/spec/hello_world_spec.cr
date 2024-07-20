require "./spec_helper"

describe HelloWorld do
  describe "test HelloWorld" do
    it "test greet function" do
      HelloWorld.greet.should eq "Hello World!"
      HelloWorld.greet("Test").should eq "Hello Test!"
    end
  end
end
