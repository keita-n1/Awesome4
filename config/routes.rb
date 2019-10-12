Rails.application.routes.draw do
  resources :coordinates, only: [:index]
  resources :comments, only: [:index]
  resources :users, only: [:edit]
  root "coordinates#index"
end
