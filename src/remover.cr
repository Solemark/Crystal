module Remover
  extend self

  def chars(s : String, cs : Array(Char)) : String
    cs.each do |c|
      s = s.delete c
    end
    s
  end
end
