require "http/server"

module WikiServer
  extend self

  def run(port : Int32 = 8080)
    server = HTTP::Server.new do |context|
      context.response.content_type = "application/json"
      context.response.print router context.request.path
    end
    address = server.bind_tcp port
    p "Listening on http://#{address}"
    server.listen
  end

  def router(path : String)
    routes : Array(String) = get_routes
    if path == "/"
      return index_handler routes
    elsif routes.includes? path[1..]
      return operator_handler path[1..]
    else
      return error_handler "invalid route", 404, path
    end
  end

  def get_routes : Array(String)
    output = Array(String).new
    Dir.new("data").entries.each do |f|
      str = f[..-6]
      output << str != "" ? "\"#{str}\"," : ""
    end
    output
  end

  def index_handler(routes : Array(String)) : String
    output : String = "["
    routes.sort.each do |n|
      output += n != "" ? "\"#{n}\"," : ""
    end
    "#{output[..-2]}]"
  end

  def operator_handler(name : String) : String
    File.read "data/#{name}.json"
  end

  def error_handler(msg : String, status_code : Int32, path : String) : String
    "{\"message\":\"#{msg}\",\"status code\":#{status_code},\"route\":\"#{path}\"}"
  end
end
