Rails.application.routes.draw do
  resources :snacks
  root to: 'snacks#show'
  post '/snacks/place_order' => 'snacks#place_order'

  # should put put ideally. just being irresponsible here
  get '/snacks/:id/destroy_order' => 'snacks#destroy_order'
end
