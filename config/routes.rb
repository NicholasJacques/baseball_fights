Rails.application.routes.draw do
  resources :fights, only: [:new, :create, :show, :index, :edit, :update]
end
