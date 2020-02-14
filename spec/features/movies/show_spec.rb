require 'rails_helper'
  
RSpec.describe 'Movies show page', type: :feature do
	it "can display movie's name, creation year, and genre" do
		studio = Studio.create(name: "MGM")
                movie = Movie.create(name: "Spaceballs", created: "1987", genre: "Comedy", studio: studio)
       		visit "/movies/#{movie.id}"
		expect(page).to have_content("Spaceballs")
		expect(page).to have_content("1987")
		expect(page).to have_content("Comedy")
	end	
	it "can display all a movie's actors in order" do
		studio = Studio.create(name: "MGM")
                movie = Movie.create(name: "Spaceballs", created: "1987", genre: "Comedy", studio: studio)
	        actor1 = Actor.create(name: "Rick Moranis", age: "66")
		actor2 = Actor.create(name: "Mel Brooks", age: "93")
		movie.actors << actor1
		movie.actors << actor2	
       		visit "/movies/#{movie.id}"
		within("#Actors") do
			expect(page).to have_content("Rick Moranis")
			expect(page).to have_content("Mel Brooks")
		end	
	end
	it "can get average age of the movies actors" do
		 studio = Studio.create(name: "MGM")
                movie = Movie.create(name: "Spaceballs", created: "1987", genre: "Comedy", studio: studio)        
                actor1 = Actor.create(name: "Rick Moranis", age: "66")
                actor2 = Actor.create(name: "Mel Brooks", age: "93")
                movie.actors << actor1
                movie.actors << actor2
       		visit "/movies/#{movie.id}"
		within("#Average Age") do
			expect(page).to have_content("78")
		end
	end
end
