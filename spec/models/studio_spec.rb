require 'rails_helper'
  
describe Studio, type: :model do
	it {should validate_presence_of :name}
end
