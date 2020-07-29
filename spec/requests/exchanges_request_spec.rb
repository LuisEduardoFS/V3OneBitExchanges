require 'rails_helper'
 
RSpec.describe 'exchanges', type: :request do
  
 describe 'GET #index' do
   it 'returns http success' do
     get '/'
     expect(response).to have_http_status(200)
   end
 end
 
 describe 'GET #convert' do
   it 'returns http success' do
     get '/convert', params: {
                       source_currency: "USD",
                       target_currency: "BRL",
                       amount: rand(1..9999)
                    }
     expect(response).to have_http_status(200)
   end
 end
end