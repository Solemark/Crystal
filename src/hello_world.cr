module HelloWorld
  extend self

  def greet(name : String = "World") : String
    "Hello #{name}!"
  end
end
