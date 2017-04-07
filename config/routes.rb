Rails.application.routes.draw do
  resources :teams, only: [:index]

  resources :fights, only: [:new, :create, :show, :index, :edit, :update]
end
