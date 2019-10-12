Rails.application.routes.draw do
  resources :coordinates, only: [:index]
  resources :comments, only: [:index]
  root "coordinates#index"
end
