require "./spec_helper"

describe CSV do
  describe "test CSV object" do
    name : String = "csv_name"
    data : Array(Array(String)) = [["1", "2", "3"], ["4", "5", "6"]]
    csv : CSV = CSV.allocate

    # Setup
    Spec.before_suite { csv = CSV.new name, data }
    # Teardown
    Spec.after_suite { csv.destroy }

    it "gets csv.name" do
      csv.name.should eq name
    end
    it "gets csv.data" do
      csv.data.should eq data
    end
    it "successfully write file" do
      res : Bool = File.exists? "#{name}.csv"
      res.should be_true
    end
    it "successfully write data to file" do
      res : Array(String) = File.read_lines "#{name}.csv"
      cleanup_data(res).should eq [["1", "2", "3"], ["4", "5", "6"]]
    end
  end
end

def self.cleanup_data(i : Array(String)) : Array(Array(String))
  o : Array(Array(String)) = Array(Array(String)).allocate
  i.each do |row|
    t = row.split ','
    o.push t
  end
  o
end
