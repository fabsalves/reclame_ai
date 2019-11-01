Rails.application.routes.draw do
  root to: 'complaints#new'

  devise_for :users

  resources :users
  resources :complaints, only: [:new, :create]
end
