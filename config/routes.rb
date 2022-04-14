Rails.application.routes.draw do
  root "pages#home"
  get "pages/about"

  resources :books
  resources :authors

  resources :students
  resources :faculties
  
  # Active record Query Interface Routes
  get 'search', to:"employees#search"
  get 'employees/results'
  post '/increaseOrder', to: "employees#increaseOrder"
  post '/decreaseOrder', to: "employees#decreaseOrder"
  resources :employees

  # Advance Active Record Query Interface Routes
  get "products/activeTrue"
  get "pages/advance_query_interface"
  resources :products
  resources :customers
  resources :orders
  get "comments/like", to: "comments#like"
  resources :comments

  # Active Record Association
  get "events/home"
  # get "comments/add_comment"

  get "users/enroll"
  get "users/unenroll"
  

  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  
  resources :events
  resources :users, except: [:new]
  resources :categories
 
  
end
