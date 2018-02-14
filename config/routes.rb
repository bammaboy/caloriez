Rails.application.routes.draw do
  resources :users
  resources :sessions
  root 'users#profile'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/profile' => 'users#profile'
  post '/profile' => 'users#update'
  get '/edit' => 'users#edit'
  post '/edit' => 'users#edit'
end
