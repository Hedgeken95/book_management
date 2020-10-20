Rails.application.routes.draw do
  get 'books/index'
  root to: "books#index"
end
