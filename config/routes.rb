Rails.application.routes.draw do
  devise_for :users
  get 'books/index'
  root to: "books#index"
  resources :users, only: [:edit, :update]
end
