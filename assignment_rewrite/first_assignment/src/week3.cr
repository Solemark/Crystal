class Week3
  def initialize
    print "enter student grade (0-100): "
    output_result gets.to_s
  end

  def output_result(grade : String)
    case grade.to_i32
    when (0..49)
      p "Student has failed (F)"
    when (50..64)
      p "Student has passed (P)"
    when (65..74)
      p "Student recieved a credit (C)"
    when (75..84)
      p "Student recieved a distinction (D)"
    when (85..100)
      p "Student recieved a high distinction (HD)"
    else
      p "Student score outside of available range"
    end
  end
end

Week3.new
