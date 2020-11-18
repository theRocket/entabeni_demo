# spec/requests/users_spec.rb
require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  # initialize test data
  let!(:users) { create_list(:user, 10) }
  let(:user_id) { users.first.id }


  # Test suite for POST /users
  describe 'POST /users' do
    # valid payload
    let(:valid_attributes) { { name_first: 'Elmo', phone: '(360) 927-2340', email: 'ryanrickerts@gmail.com' } }

    context 'when the request is valid' do
      before { post '/users', params: valid_attributes }

      it 'creates a user' do
        expect(json['name_first']).to eq('Elmo')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/users', params: { name_last: 'Foobar', phone: '(360) 599-2224' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/First name cannot be empty when providing a Last name/)
      end
    end
  end

end