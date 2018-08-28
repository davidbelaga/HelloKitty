Rails.application.routes.draw do
  get 'carts/show'
  root 'items#index'
  resources :items
  resources :charges
  devise_for :users
end
