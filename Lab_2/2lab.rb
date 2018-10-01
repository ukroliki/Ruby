require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://ru.wikipedia.org/wiki/%D0%9D%D0%BE%D0%B2%D0%BE%D1%81%D0%B8%D0%B1%D0%B8%D1%80%D1%81%D0%BA'))

puts "Население:"
doc.css('tr td span.no-wikidata span.nowrap', 'article td').each do |link|
  puts link.content
end