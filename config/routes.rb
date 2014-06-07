Rails.application.routes.draw do
  resources :snacks
  root to: 'snacks#show'
  post '/snacks/place_order' => 'snacks#place_order'
end
