Rails.application.routes.draw do
  root "sets#index"
  resources :sets, only: :index
end
