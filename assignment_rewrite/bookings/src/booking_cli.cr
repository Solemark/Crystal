require "./booking.cr"

module BookingCLI
  extend self
  INSTR = "1 to add new booking\n2 to search existing booking\n3 to list all bookings\n4 to update a booking\n5 to remove a booking\nEnter any other key to quit\n>"

  def cli(bookings : Array(Luxury) = [] of Luxury)
    case get_input(INSTR).to_i32
    when 1
      bookings << create
    when 2
      search(bookings).to_s
    when 3
      p display bookings
    when 4
      bookings = update bookings
    when 5
      bookings = remove bookings
    else
      exit
    end
    cli bookings
  end

  def get_input(m : String) : String
    print m
    gets.to_s
  end

  def create : Luxury
    Luxury.new(
      get_input("Enter Booking ID: ").to_i32,
      get_input("Enter Booking Date: "),
      get_input("Enter Booking Weeks: ").to_i32,
      get_input("Enter Owner Name: "),
      get_input("Enter Contact Number: "),
      get_input("Enter Address: "),
      get_input("Enter Rooms: ").to_i32,
      get_input("Enter Area: ").to_f64,
      get_input("Do Alarm Check? (Y/N): ").upcase == "Y" ? true : false,
      get_input("Do Maintenance? (Y/N): ").upcase == "Y" ? true : false
    )
  end

  def search(bookings : Array(Luxury)) : Luxury
    bookings.each do |b|
      m = get_input("Enter Booking ID").to_i32
      if b.id == m
        return b
      end
    end
  end

  def display(bookings : Array(Luxury)) : String
    output = ""
    bookings.each do |b|
      output += b.to_s
    end
    output
  end

  def update(bookings : Array(Luxury)) : Array(Luxury)
    updated : Array(Luxury) = [] of Luxury
    bookings.each do |b|
      m = get_input("Enter Booking ID").to_i32
      if b.id == m
        updated << create
      end
      updated << b
    end
    updated
  end

  def remove(bookings : Array(Luxury)) : Array(Luxury)
    updated : Array(Luxury) = [] of Luxury
    bookings.each do |b|
      m = get_input("Enter Booking ID").to_i32
      if b.id != m
        updated << create
      end
    end
    updated
  end
end

BookingCLI.cli
