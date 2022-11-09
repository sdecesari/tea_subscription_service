require 'rails_helper'

RSpec.describe 'Get All Subscriptions' do 
  describe 'happy path' do 
    it 'returns all active and inactive subscriptions' do 
      customer = Customer.create!(first_name: 'shirley', last_name: 'decesari', email: 'shirley@me.com', address: 'a place')
      tea1 = Tea.create!(title: 'green tea', description: 'it is green', temperature: 140, brew_time: '2 minutes')
      tea2 = Tea.create!(title: 'black tea', description: 'it is not black', temperature: 180, brew_time: '3 minutes')
      subscription1 = customer.subscriptions.create!(title: 'green tea subscription', price: 18.00, frequency: 'weekly', status: 'active', tea_id: tea1.id, customer_id: customer.id)
      subscription2 = customer.subscriptions.create!(title: 'black tea subscription', price: 10.00, frequency: 'weekly', status: 'inactive', tea_id: tea2.id, customer_id: customer.id)

      get "/api/v1/customers/#{customer.id}/subscriptions", headers: headers, params:{ customer_id: customer.id }

      expect(response).to be_successful
      expect(response.status).to eq(200)
      # binding.pry
    end
  end 
end 