Rails.application.routes.draw do
  devise_for :users

  resources :purchases
  resources :user_items
  resources :items
  resources :ratings
  resources :users, only: [:index, :show]
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
