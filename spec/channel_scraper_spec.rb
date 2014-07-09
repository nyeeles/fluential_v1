require 'rails_helper'

describe 'Channel scraper' do

	it 'can have 0 channels' do
		expect(channels.count).to eq 0
	end

	it 'can scrape 50 channel' do
		scrape_channels
		expect(channels.count).to eq 50
		expect(channels.first).to eq 'PewDiePie'
	end

end