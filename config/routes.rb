Rails.application.routes.draw do
  devise_for :users
  get 'books/index'
  root to: "categories#index"
  resources :users, only: [:edit, :update]
  resources :categories, only: [:new, :create, :destroy] do
    resources :books, only: [:index, :create,:destroy]
  end
end
