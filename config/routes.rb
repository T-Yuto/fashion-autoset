Rails.application.routes.draw do
  devise_for :users
  root "images#index"
  resources :images, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :users, only: [:show]
end
