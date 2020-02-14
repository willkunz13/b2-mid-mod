class Actor < ApplicationRecord
        validates_presence_of :name, :age
        has_many :movies_actors
	has_many :movies, through: :movies_actors
end
