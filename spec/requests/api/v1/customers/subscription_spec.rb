require 'rails_helper'

RSpec.describe 'Create Subscription' do 
  describe 'happy path' do 
    it 'can create a subscription' do 
      customer = Customer.create!(first_name: 'shirley', last_name: 'decesari', email: 'shirley@me.com', address: 'a place')
      tea = Tea.create!(title: 'green tea', description: 'it is green', temperature: 140, brew_time: '2 minutes')
      sub_params = { 
        title: 'green tea subscription', 
        price: 18.00,
        status: 'active',
        frequency: 'weekly',
        tea_id: tea.id,
        customer_id: customer.id
      }
      headers = {"CONTENT_TYPE" => "application/json"}

      post "/api/v1/customers/#{customer.id}/subscribe", headers: headers, params: JSON.generate(sub_params)

      # binding.pry
      expect(response).to be_successful
      expect(response.status).to eq(201)
    end
  end 
end