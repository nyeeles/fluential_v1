task :populate_db do
	influencer = Influencer.new
	influencer.get_channels
	influencer.save_channels
end