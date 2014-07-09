require 'nokogiri'
require 'open-uri'

def channels 
	@channels ||= []
end

def load_nokogiri
	@doc = Nokogiri::HTML(open('http://www.statsheep.com/p/Top-Subscribers'))
end

def scrape_channels
	load_nokogiri
	@doc.css('.chan a[href]').take(100).each do |username|
		channels << username.text
	end
	channels.reject!{|channel| channel.empty? }
end

def save_channels
	channels.each do |channel|
		Influencer.create(username: channel)
	end
end