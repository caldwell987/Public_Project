Rails.application.routes.draw do


  resources :profiles
  resources :users
  resources :contacts
  resources :friendships
  get 'friends/index'
  get 'friends/destroy'

  root to: 'sessions#new'

  get '/friends', to: 'users#friends'
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
