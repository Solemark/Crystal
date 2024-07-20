require "./spec_helper"

describe Remover do
  describe "test Remover" do
    it "test chars function" do
      res = Remover.chars "Hello World!", ['l', ' ', '!']
      res.should eq "HeoWord"
    end
  end
end
