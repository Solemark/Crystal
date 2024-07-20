class Booking
  property id : Int32
  property date : String
  property weeks : Int32
  property owner : String
  property contact : String
  property address : String
  property rooms : Int32
  property area : Float64

  def initialize(@id, @date, @weeks, @owner, @contact, @address, @rooms, @area)
  end

  def get_rooms_cost : Float64
    @rooms * 5.0
  end

  def get_area_cost : Float64
    @area * 2.0
  end

  def to_s : String
    "#{@id}, #{@date}, #{@weeks}, #{@owner}, #{@contact}, #{@address}, #{@rooms}, #{@area}"
  end
end

class Luxury < Booking
  property alarm : Bool
  property pool : Bool

  def initialize(@id, @date, @weeks, @owner, @contact, @address, @rooms, @area, @alarm, @pool)
  end

  def get_luxury_cost : Float64
    total : Float64 = 0.0
    total += @alarm ? 50.0 : 0
    total += @pool ? 50.0 : 0
    total
  end

  def to_s : String
    "#{super}, #{@alarm}, #{@pool}"
  end
end
