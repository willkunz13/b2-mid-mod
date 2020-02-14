require 'rails_helper'
  
describe Actor, type: :model do
        it {should validate_presence_of :name}
        it {should validate_presence_of :age}
	
	it {should have_many :movies_actors}
	it {should have_many(:movies).through(:movies_actors)}
	
end
