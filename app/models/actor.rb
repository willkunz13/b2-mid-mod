class Actor < ApplicationRecord
        validates_presence_of :name, :age
  #      has_many :movies
end
