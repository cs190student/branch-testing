require 'net/http'

puts "what should I google?"
query = gets.chomp
uri = URI.parse("http://www.google.com/search?q=#{query.gsub(" ", "+")}&btnI")
content =  Net::HTTP.get(uri)

content.gsub!("<", "")
content.gsub!("=", "")
puts content.gsub!(">", "")

