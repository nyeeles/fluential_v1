class Influencer < ActiveRecord::Base

	require 'nokogiri'
	require 'open-uri'

	def load_nokogiri
		@doc = Nokogiri::HTML(open('http://www.statsheep.com/p/Top-Subscribers'))
	end

	def usernames
		@usernames ||= []
	end

	def get_channels
		load_nokogiri
		@doc.css('.chan a[href]').take(100).each do|name|
			usernames << name.text
		end
		usernames.reject! { |username| username.empty? }
	end

	def save_channels
		usernames.each do |user|
			Influencer.create(user:user,
												url:"https://www.youtube.com/user/#{user}",
												api:"http://gdata.youtube.com/feeds/api/users/#{user}")
		end
	end

end