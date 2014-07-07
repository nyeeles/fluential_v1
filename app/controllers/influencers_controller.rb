class InfluencersController < ApplicationController

	require 'crack'
	require 'json' 
	require 'open-uri'
	require 'nokogiri'

	def index
		influencers = Influencer.all
		@JSON = influencers.map do |influencer|
			Crack::XML.parse(open(influencer.api))
		end
	end
end
