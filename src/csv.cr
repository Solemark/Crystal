class CSV
  property name : String
  property data : Array(Array(String))

  def initialize(@name = "", @data = [[""]])
    write
  end

  private def write
    File.write("#{@name}.csv", write_data)
  end

  private def write_data : String
    output : String = ""
    @data.each do |row|
      i : Int32 = 0
      row.each do |item|
        output += "#{item}"
        if i < row.size - 1
          output += ','
        else
          output += "\n"
        end
        i += 1
      end
    end
    output
  end

  def destroy
    File.delete "#{@name}.csv"
  end
end
