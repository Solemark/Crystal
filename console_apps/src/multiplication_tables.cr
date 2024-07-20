module MultiplicationTables
  extend self

  def get_table(table : Int32, max : Int32) : Array(Int32)
    (0..max).map { |n| n*table }
  end
end
