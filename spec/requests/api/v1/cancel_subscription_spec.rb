require 'rails_helper'

RSpec.describe 'Cancel Subscription' do 
  describe 'happy path' do 
    it 'can cancel a subscription' do 
      customer = Customer.create!(first_name: 'shirley', last_name: 'decesari', email: 'shirley@me.com', address: 'a place')
      tea = Tea.create!(title: 'green tea', description: 'it is green', temperature: 140, brew_time: '2 minutes')
      subscription = customer.subscriptions.create!(title: 'green tead subscription', price: 18.00, frequency: 'weekly', status: 'active', tea_id: tea.id, customer_id: customer.id)
      cancel_params = {
        subscription_id: subscription.id,
        status: 'inactive'
      }

      headers = {"CONTENT_TYPE" => "application/json"}

      patch "/api/v1/customers/#{customer.id}/cancel", headers: headers, params: JSON.generate(cancel_params)
      
      expect(response).to be_successful
      expect(response.status).to eq(200)
    end
  end 
end 