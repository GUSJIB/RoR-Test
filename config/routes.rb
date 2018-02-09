Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/api/transactions', to: 'api/transactions#index'
  post '/api/transactions/top_up', to: 'api/transactions#top_up'
  post '/api/transactions/buy', to: 'api/transactions#buy'
  post '/api/transactions/sell', to: 'api/transactions#sell'
  get '/api/balances', to: 'api/balances#index'

end
