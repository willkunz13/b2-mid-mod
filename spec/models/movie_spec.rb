require 'rails_helper'
  
describe Movie, type: :model do
	describe "validations" do
		it {should validate_presence_of :name}
		it {should validate_presence_of :created}
		it {should validate_presence_of :genre}
	end
	describe "relationships" do	
		it {should belong_to :studio}
		it {should have_many :movies_actors}
		it {should have_many(:actors).through(:movies_actors)}
	end
	it "avg_actor_age" do
		studio = Studio.create(name: "MGM")
                movie = Movie.create(name: "Spaceballs", created: "1987", genre: "Comedy", studio: studio)
                actor1 = Actor.create(name: "Rick Moranis", age: "66")
		actor2 = Actor.create(name: "Mel Brooks", age: "93")
                movie.actors << actor1
                movie.actors << actor2
		expect(movie.avg_actor_age).to eq(79.5)
	end
end

