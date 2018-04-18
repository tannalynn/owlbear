Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#about' 
  
  
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/settings', to: 'users#edit'
  
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  
  
  
end
