Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :users, only: [:index, :new, :edit, :create] 
  resources :upper_image, only: [:index, :new, :edit, :create]
  resources :down_image,  only: [:index, :new, :edit, :create]
end
