require 'rails_helper'

RSpec.describe "Todos", type: :request do

  describe 'POST /todo/' do
    context 'when request attributes are valid' do
      #Todo add check email already exists
      it 'returns status code 201' do
        post '/todo', params: { title: 'alp1@ine.com', description: 'password'}
        expect(response).to have_http_status(201)
        
      end
      it 'returns the created object' do
        post '/todo', params: { title: 'alp1@ine.com', description: 'password'}
        expected = JSON.parse(response.body)
        expected_title= expected["title"]
        expect(expected_title).to eq('alp1@ine.com')        
      end
      it 'returns the created object with an id as integer' do
        post '/todo', params: { title: 'alp1@ine.com', description: 'password'}
        expected = JSON.parse(response.body)
        expected_id= expected["id"]  
        expect(expected_id.to_i).to be_a_kind_of(Integer)                   
      end
    end 
    context 'when request attributes are in-valid' do
      it 'returns status code 422' do 
        post '/todo', params: { title: '', description: 'password'}
        expect(response).to have_http_status(422)
      end
    end
  end
end
