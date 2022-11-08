Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      post '/customers/:customer_id/subscribe', to: 'subscriptions#create'
    end
  end
end
