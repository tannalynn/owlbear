Rails.application.routes.draw do

  get 'character/new'

  get 'sessions/new'

  root 'static_pages#about' 
  
  
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get '/new_character', to: 'character#new'
  post '/new_character', to: 'character#create'
  
  get '/delete_character', to: 'character#delete'
  
  resources :users
  resources :character
  
  
end
