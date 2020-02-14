require 'rails_helper'

RSpec.describe 'Studios', type: :feature do
	it "can display all stuidos" do
		studio = Studio.create(name: "MGM")
		movie = studio.move.create(name: "Spaceballs", created: "1987", genre: "Comedy")
		visit "/studios"
		expect(page).to have_content("MGM")
		within "#movies-#{movie.id}" do
			expect(page).to have_content("Spaceballs")
		end
	end
end
		
