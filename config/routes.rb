Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 

      root to: "user#index"
      
      resources :users

      resources :sessions, only: [:create]
      delete :logout, to: "sessions#logout"
      get :logged_in, to: 'sessions#logged_in'
      # get '/sessions/currentuser', to: 'sessions#currentUser'

      resources :registrations, only: [:create]

      resources :contacts
    end
  end  
end



  # root to: 'sessions#new'


  # # /users Routes
  # resources :users
  # get '/friends', to: 'users#friends'
  # get '/register', to: 'users#new'

  # # /profiles Routes
  # resources :profiles, only: [:index, :show]
  
  # # /contacts Routes
  # resources :contacts

  # # /friendships Routes
  # resources :friendships, only: [:create, :destroy]
  # # get 'friends/index'
  # # get 'friends/destroy'

  
  # # Login/Sessions Routes
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy'


# Api for front end