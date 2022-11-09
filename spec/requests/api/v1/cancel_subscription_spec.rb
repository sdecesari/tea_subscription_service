require 'rails_helper'

RSpec.describe 'Cancel Subscription' do 
  describe 'happy path' do 
    it 'can cancel a subscription' do 
      customer = Customer.create!(first_name: 'shirley', last_name: 'decesari', email: 'shirley@me.com', address: 'a place')
      tea = Tea.create!(title: 'green tea', description: 'it is green', temperature: 140, brew_time: '2 minutes')
      subscription = customer.subscriptions.create!(title: 'green tea subscription', price: 18.00, frequency: 'weekly', status: 'active', tea_id: tea.id, customer_id: customer.id)
      cancel_params = {
        subscription_id: subscription.id,
        status: 'inactive'
      }

      headers = {"CONTENT_TYPE" => "application/json"}

      patch "/api/v1/customers/#{customer.id}/cancel", headers: headers, params: JSON.generate(cancel_params)

      expect(response).to be_successful
      expect(response.status).to eq(200)

      result = JSON.parse(response.body, symbolize_names: true)

      expect(result).to have_key(:data)
      expect(result[:data]).to have_key(:id)
      expect(result[:data]).to have_key(:type)
      expect(result[:data]).to have_key(:attributes)
      expect(result[:data][:attributes]).to have_key(:title)
      expect(result[:data][:attributes][:title]).to be_a(String)
      expect(result[:data][:attributes]).to have_key(:price)
      expect(result[:data][:attributes][:price]).to be_a(Float)
      expect(result[:data][:attributes]).to have_key(:status)
      expect(result[:data][:attributes][:status]).to be_a(String)
      expect(result[:data][:attributes]).to have_key(:frequency)
      expect(result[:data][:attributes][:frequency]).to be_a(String)
    end
  end 

  describe 'sad path' do 
    it 'returns an error when params are missing' do 
      customer = Customer.create!(first_name: 'shirley', last_name: 'decesari', email: 'shirley@me.com', address: 'a place')
      tea = Tea.create!(title: 'green tea', description: 'it is green', temperature: 140, brew_time: '2 minutes')
      subscription = customer.subscriptions.create!(title: 'green tea subscription', price: 18.00, frequency: 'weekly', status: 'active', tea_id: tea.id, customer_id: customer.id)
      cancel_params = {
        subscription_id: subscription.id,
        status: ''
      }

      headers = {"CONTENT_TYPE" => "application/json"}

      patch "/api/v1/customers/#{customer.id}/cancel", headers: headers, params: JSON.generate(cancel_params)

      expect(response).to_not be_successful
      expect(response.status).to eq(400)
    end 
  end
end 