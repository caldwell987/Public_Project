Rails.application.routes.draw do


  resources :users
  resources :contacts
  get 'friends/index'
  get 'friends/destroy'


  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
