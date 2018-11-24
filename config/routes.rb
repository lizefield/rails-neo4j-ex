Rails.application.routes.draw do
  root 'books#index'
  resources :books
  resources :authers
  resources :customers
  namespace :customers do
    get 'bookshelf/:id', action: :bookshelf, as: :bookshelf
    post 'buy'
  end
  resources :comments
end
