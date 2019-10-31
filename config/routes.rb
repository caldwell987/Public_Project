Rails.application.routes.draw do

  root to: 'sessions#new'


  # /users Routes
  resources :users
  get '/friends', to: 'users#friends'
  get '/register', to: 'users#new'

  # /profiles Routes
  resources :profiles, only: [:index, :show]
  
  # /contacts Routes
  resources :contacts

  # /friendships Routes
  resources :friendships, only: [:create, :destroy]
  # get 'friends/index'
  # get 'friends/destroy'

  
  # Login/Sessions Routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


# Api for front end
  namespace :api do
    namespace :v1 do 
      resources :users
      get 'register', to: 'users#new'
      get 'friends', to: 'users#friends'
      resources :contacts
      get 'kinds', to: 'contacts#kind'
      get 'login', to: 'sessions#new'
      post 'login', to: 'sessions#create'
      delete 'logout', to: 'sessions#destroy'
    end
  end  


end
