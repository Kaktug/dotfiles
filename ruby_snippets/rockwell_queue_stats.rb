require 'rubygems'
require 'json'
require 'net/http'
require 'uri'

uri = URI.parse("[TARGET URL]")

http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)

response = http.request(request)

if response.code == "200"
  result = JSON.parse(response.body)
  completed = result["completed"]
  failed = result["failed"]

  fail_rate = ((failed.to_f / completed.to_f) * 100).round(3)
  puts ""
  puts "============================"
  puts "Health Check:"
  puts "=> Completed: #{completed}"
  puts "=> Failed: #{failed}"
  puts "=> Failure Rate: #{fail_rate}%"
  puts "============================"
  puts ""
else
  puts "Error!"
end
