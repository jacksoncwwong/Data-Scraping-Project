require "nokogiri"
require "open-uri"

url = "http://www.reddit.com/"
data = Nokogiri::HTML(open(url))
@entries = data.css('.title.may-blank')

@entries.each do |entry|

	entry.at_css('.title').text

end