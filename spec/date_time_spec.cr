require "./spec_helper"

describe DateTime do
  describe "test datetime" do
    it "output_time" do
      DateTime.output_time(Time.local 2020, 1, 1, 0, 0, 0).should eq "The date is Wednesday the 1st of Jan 2020"
    end
    it "cure_date" do
      DateTime.cure_date(1).should eq "1st"
      DateTime.cure_date(21).should eq "21st"
      DateTime.cure_date(31).should eq "31st"
      DateTime.cure_date(2).should eq "2nd"
      DateTime.cure_date(22).should eq "22nd"
      DateTime.cure_date(3).should eq "3rd"
      DateTime.cure_date(23).should eq "23rd"
      DateTime.cure_date(11).should eq "11th"
      DateTime.cure_date(27).should eq "27th"
    end
    it "cure_month" do
      DateTime.cure_month(1).should eq "Jan"
      DateTime.cure_month(2).should eq "Feb"
      DateTime.cure_month(3).should eq "Mar"
      DateTime.cure_month(4).should eq "Apr"
      DateTime.cure_month(5).should eq "May"
      DateTime.cure_month(6).should eq "Jun"
      DateTime.cure_month(7).should eq "Jul"
      DateTime.cure_month(8).should eq "Aug"
      DateTime.cure_month(9).should eq "Sep"
      DateTime.cure_month(10).should eq "Oct"
      DateTime.cure_month(11).should eq "Nov"
      DateTime.cure_month(12).should eq "Dec"
    end
  end
end
