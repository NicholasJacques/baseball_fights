Rails.application.routes.draw do
  resources :teams, only: [:index, :show]

  resources :fights, only: [:new, :create, :show, :index, :edit, :update]
end
