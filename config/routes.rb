Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      post '/customers/:customer_id/subscribe', to: 'subscriptions#create'
      patch '/customers/:customer_id/cancel', to: 'subscriptions#update'
    end
  end
end
