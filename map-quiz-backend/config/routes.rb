Rails.application.routes.draw do
  resources :questions
  resources :cities
  resources :games
  get '/topten', to: 'games#top_ten'
  get '/users/:username', to: 'users#show'
  resources :users, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
