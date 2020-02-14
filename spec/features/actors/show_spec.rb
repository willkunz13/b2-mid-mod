require 'rails_helper'

RSpec.describe 'Actors show page', type: :feature do
	it "can show their name, age, and all movies" do
		studio = Studio.create(name: "MGM")
	        movie = Movie.create(name: "Spaceballs", created: "1987", genre: "Comedy", studio: studio)
		actor = Actor.create(name: "Rick Moranis", age: "66")
		actor.movies << movie
		visit "/actors/#{actor.id}"
		expect(page).to have_content("Rick Moranis")
		expect(page).to have_content("66")
		expect(page).to have_content("Spaceballs")
	end
end
