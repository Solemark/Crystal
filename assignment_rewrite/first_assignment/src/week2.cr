class Week2
  def initialize
    maxMarks : Int32 = 65
    name : String? = nil
    mark : String? = nil

    print "Enter the name of the student: "
    name = gets.to_s

    print "Enter the mark of the student: "
    mark = gets.to_s

    total : Float64 = (mark.to_i32 * 100) / maxMarks
    p "#{name} recieved #{total.round 2}% (#{mark.to_i32}/#{maxMarks})"
  end
end

Week2.new
