Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :jobs
  resources :users, only: [:index, :show]
end
