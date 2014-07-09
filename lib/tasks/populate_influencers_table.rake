require 'channel_scraper'

task :populate_influencers_table do
	scrape_channels
	save_channels
end