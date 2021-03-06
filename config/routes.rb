Rails.application.routes.draw do
  resources :users
  root to: 'pages#index'
  get '/auth/:provider/callback' => 'sessions#create'
  post '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end