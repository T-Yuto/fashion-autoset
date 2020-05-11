Rails.application.routes.draw do
  devise_for :users
  root "images#index"
  resources :images, only: [:new, :create, :index, :show]
  resources :users, only: [:show]
end
