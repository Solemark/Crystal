module DateTime
  extend self

  def current_date : String
    output_time Time.local
  end

  def output_time(t : Time) : String
    "The date is #{t.day_of_week} the #{cure_date t.day} of #{cure_month t.month} #{t.year}"
  end

  def cure_date(d : Int32) : String
    s : String = ""
    case d
    when 1, 21, 31
      s = "#{d}st"
    when 2, 22
      s = "#{d}nd"
    when 3, 23
      s = "#{d}rd"
    else
      s = "#{d}th"
    end
    s
  end

  def cure_month(m : Int32) : String
    s : String = ""
    case m
    when 1
      s = "Jan"
    when 2
      s = "Feb"
    when 3
      s = "Mar"
    when 4
      s = "Apr"
    when 5
      s = "May"
    when 6
      s = "Jun"
    when 7
      s = "Jul"
    when 8
      s = "Aug"
    when 9
      s = "Sep"
    when 10
      s = "Oct"
    when 11
      s = "Nov"
    when 12
      s = "Dec"
    end
    s
  end
end
