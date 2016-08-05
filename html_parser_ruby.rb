
require 'open-uri'
require 'nokogiri'
require 'json'
require 'rest_client'






url = 'http://cnn.com'
 
response = RestClient.get(url)
 
doc = Nokogiri::HTML(response)


doc.css('a').each do |link|

puts "Current link of page content:"

puts link['href']

end



doc.css('h1').each do |h1|

puts "list of h1 content:"

puts h1.text.strip

end




doc.css('h2').each do |h2|

puts "list of h2 content:"

puts h2.text.strip

end




doc.css('h3').each do |h3|

puts "List  h3 content:"
puts h3.text.strip


end







