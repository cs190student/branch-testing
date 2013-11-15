require 'net/http'

puts "what should I google?"
query = gets.chomp
uri = URI.parse("http://www.google.com/search?q=#{query.gsub(" ", "+")}&btnI")
puts Net::HTTP.get(uri)
