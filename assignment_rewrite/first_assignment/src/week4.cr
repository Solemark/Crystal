class Week4
  def initialize
    p "Mark Entry System"
    i : Int32 = 1
    total : Int32 = 0
    while i <= 3
      i += 1
      name : String = get_input "Enter student name"
      grade : Int32 = get_input("Enter student grade (0-100)").to_i32
      p create_result name, grade
      total += grade
    end
    p "The average student mark is #{total/i}"
  end

  def get_input(m : String) : String
    p m
    print ">"
    gets.to_s
  end

  def create_result(name : String, grade : Int32) : String
    case grade
    when (0..49)
      return "#{name} has failed (F)"
    when (50..64)
      return "#{name} has passed (P)"
    when (65..74)
      return "#{name} recieved a credit (C)"
    when (75..84)
      return "#{name} recieved a distinction (D)"
    when (85..100)
      return "#{name} recieved a high distinction (HD)"
    else
      return "#{name} score outside of available range"
    end
  end
end

Week4.new
