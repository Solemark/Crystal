require "./spec_helper"

describe MultiplicationTables do
  describe "test MultiplicationTables" do
    it "test 1 times table" do
      res = MultiplicationTables.get_table 1, 12
      res.should eq [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    end
    it "test 12 times table" do
      res = MultiplicationTables.get_table 12, 12
      res.should eq [0, 12, 24, 36, 48, 60, 72, 84, 96, 108, 120, 132, 144]
    end
  end
end
