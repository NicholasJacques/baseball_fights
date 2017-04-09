Rails.application.routes.draw do
  resources :teams, only: [:index, :show]

  resources :fights, only: [:new, :create, :show, :index, :edit, :update]

  resources :users, only: [:new, :create, :show]

  namespace :admin do
    resources :fights, only: [:show]
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
