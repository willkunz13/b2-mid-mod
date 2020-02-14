require 'rails_helper'
  
describe Movie, type: :model do
        it {should validate_presence_of :name}
        it {should validate_presence_of :created}
        it {should validate_presence_of :genre}
	
	it {should belong_to :studio}
	it {should have_many :movies_actors}
	it {should have_many(:actors).through(:movies_actors)}
end

