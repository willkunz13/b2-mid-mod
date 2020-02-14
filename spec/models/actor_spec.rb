require 'rails_helper'
  
describe Actor, type: :model do
        it {should validate_presence_of :name}
        it {should validate_presence_of :age}
end
