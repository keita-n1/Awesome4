Rails.application.routes.draw do
  devise_for :users
  resources :coordinates, only: [:index]
  resources :comments, only: [:index]
  resources :users, only: [:edit]
  root "coordinates#index"
end
