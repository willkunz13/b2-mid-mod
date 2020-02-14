class Movie < ApplicationRecord
        validates_presence_of :name
        validates_presence_of :created
        validates_presence_of :genre
	belongs_to :studio
end
