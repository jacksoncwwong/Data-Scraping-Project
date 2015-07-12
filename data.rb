require "sinatra"
require "nokogiri"
require "open-uri"

get '/' do

	url = "http://www.reddit.com/"
	data = Nokogiri::HTML(open(url))
	@entry = data.css('.thing')
	erb :index

end


	# @entries.each do |entry|
	# 	entry.at_css('.title').text
	# end