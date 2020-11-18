require 'rails_helper'

# Test suite for the Todo model
RSpec.describe User, type: :model do
  # Validation tests
  describe '#name_last' do
    record = User.new
    record.name_last = "Testing"
    record.name_first = '' # invalid state
    record.valid? # run validations
    it 'name_last error' do
        expect(record.errors[:name_first]).to include("First name cannot be empty when providing a Last name")
    end
  end

  describe '#email' do
    record = User.new
    record.email = "blah@.com"
    record.valid? # run validations
    it 'email error' do
        expect(record.errors[:email]).to include("Invalid Email Address")
    end
  end

  describe '#phone' do
    record = User.new
    record.phone = "333"
    record.valid? # run validations
    it 'phone error' do
        expect(record.errors[:phone]).to include("is invalid")
    end
  end
end