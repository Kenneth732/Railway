Rails.application.routes.draw do
  resources :photos, only: [:index, :show, :new, :create, :update, :destroy]
  resources :users
end


