Rails.application.routes.draw do
  root 'items#index'
  resources :items
  resources :charges
  devise_for :users
end
