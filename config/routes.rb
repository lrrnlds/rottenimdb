Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies
  root 'movies#index'

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'

  resources :users, only: [:show, :create]
  resources :genres

  resources :reviews, only: [:create, :update, :new, :edit, :destroy]


  resources :comments, only: [:create, :update, :new, :edit, :destroy]


end
