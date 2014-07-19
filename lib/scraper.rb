class Scraper

	def scrape_views
		url = open('http://gdata.youtube.com/feeds/api/users/PewDiePie?alt=json').read
		pewdiepie = JSON.parse(url)
		views = pewdiepie["entry"]["yt$statistics"]["totalUploadViews"]
		influencer = Influencer.first
		influencer.data_points.create(views: views)
	end

end