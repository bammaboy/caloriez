Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
  	member do
  		put :update_calories
  	end
  end
  resources :sessions

  root 'users#profile'

  get '/login' => 'sessions#login'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'sessions#signup'
  post '/users' => 'users#create'

  get '/profile' => 'users#profile'
  post '/profile' => 'users#update'
  get '/edit' => 'users#edit'
  post '/edit' => 'users#edit'

end
