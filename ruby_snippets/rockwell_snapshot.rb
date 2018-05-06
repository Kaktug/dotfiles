require 'rubygems'
require 'csv'
require 'json'
require 'net/http'
require 'uri'

uri = URI.parse("[TARGET URL]")

http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)

response = http.request(request)

if response.code == "200"
  result = JSON.parse(response.body)
  CSV.open(ENV['HOME'] + '/Desktop/illustrations.csv', 'w') do |csv|
    result.each do |hash|
      csv << hash.values
    end
  end
  puts ""
  puts "=> Success: .CSV saved to desktop"
  puts ""
else
  puts "Error!"
end
