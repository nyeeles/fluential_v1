require 'rails_helper'

describe 'Channel scraper' do
	context 'scraping channels' do 
		it 'can have 0 channels' do
			expect(channels.count).to eq 0
		end

		it 'can scrape 50 channel' do
			scrape_channels
			expect(channels.count).to eq 50
			expect(channels.first).to eq 'PewDiePie'
		end
	end

	context 'saving channels' do
		it 'has no channels' do
			expect(Influencer.count).to eq 0
		end

		it 'can save channels to the database' do
			scrape_channels
			save_channels
			expect(Influencer.count).to eq 50
		end
	end

end