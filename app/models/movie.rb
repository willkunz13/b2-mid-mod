class Movie < ApplicationRecord
        validates_presence_of :name
        validates_presence_of :created
        validates_presence_of :genre
	belongs_to :studio
	has_many :movies_actors
	has_many :actors, through: :movies_actors


	def avg_actor_age
		actors.average(:age)
	end
end
