require 'rails_helper'

describe 'Influencer API' do
	before { Influencer.create(username: 'PewDiePie') }

	it 'has no "about" description' do
		expect(Influencer.first.about).to eq nil
	end

	it 'can add an "about" description' do
		
		expect(Influencer.first.about).to eq nil
	end

end