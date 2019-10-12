Rails.application.routes.draw do
  devise_for :users
  resources :coordinates, only: [:index, :create]
  resources :comments, only: [:index]
  resources :users, only: [:show, :edit, :update] do
    resources :coordinates, only: [:new]
  end
  root "coordinates#index"
end
