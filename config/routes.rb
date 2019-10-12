Rails.application.routes.draw do
  resources :coordinates, only: [:index]
  root "coordinates#index"
end
