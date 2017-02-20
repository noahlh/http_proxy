require "http/proxy"

server = HTTP::Proxy.new(8080, handlers: [
  HTTP::LogHandler.new
])

puts "Listening on http://127.0.0.1:8080"
server.listen