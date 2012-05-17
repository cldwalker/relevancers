require "net/http"

desc "Ping app"
task :ping do
  url = "#{ENV['APP_NAME']}.herokuapp.com"
  puts "ping (#{url})"
  r = Net::HTTP.new(url, 80).request_head('/')
  puts "pong! (#{r.code} #{r.message})"
end
