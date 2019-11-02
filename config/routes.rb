Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated do
      root 'complaints#index'

      resources :users
      resources :complaints, only: [:index, :show]
    end

    unauthenticated do
      root 'complaints#new'

      resources :complaints, only: [:new, :create]
    end
  end
end
