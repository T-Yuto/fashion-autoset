Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :users, only: :index 
  resources :upper_images, only: [:index, :new, :edit]
  resources :down_images,  only: [:index, :new, :edit]
end
