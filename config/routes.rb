Rails.application.routes.draw do
  resources :books
  resources :book_stores
  resources :dashboard

  root "book_stores#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
