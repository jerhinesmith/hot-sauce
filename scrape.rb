require 'json'
require 'uri'
require 'net/http'
require 'csv'

links = File.readlines('ulinks').map(&:chomp).map do |link|
  URI("https://heatonist.com/#{link}.js")
end

records = []

links.each do |uri|
  print "Reading #{uri.request_uri}".ljust(79, '.')
  res = Net::HTTP.get_response(uri)
  next unless res.is_a?(Net::HTTPSuccess)

  hot_sauce = JSON.parse(res.body, object_class: OpenStruct)

  records << [hot_sauce.id, hot_sauce.title, hot_sauce.vendor, 0, hot_sauce.price, 0, "https://heatonist.com#{hot_sauce.url}"]

  puts "✅"
  sleep(rand(0..2))
end

File.write("output.csv", records.map(&:to_csv).join)

# id, title, vendor, spice, price, sodium, url