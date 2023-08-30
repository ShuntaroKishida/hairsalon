Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  resources :homes, only: :index
  resources :accesss, only: :index
  resources :concepts, only: :index
  resources :days, only: :index
  resources :prices, only: :index
end