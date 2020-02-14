require 'rails_helper'

RSpec.describe 'Studios', type: :feature do
	it "can display all stuidos" do
		studio = Studio.create(name: "MGM")
		movie = Movie.create(name: "Spaceballs", created: "1987", genre: "Comedy", studio: studio)
		visit "/studios"
		expect(page).to have_content("MGM")
		within "#movie-#{movie.id}" do
			expect(page).to have_content("Spaceballs")
		end
	end
end
		
