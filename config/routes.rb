Rails.application.routes.draw do
  root to: 'books#top'

  get 'users/index'
  get 'users/show', to: 'users#show', as: 'user_show'
  get 'users/new'
  post 'users', to: 'users#create'
  get 'users/login_name', to: 'users#login_name'
  post 'login', to: 'users#login'
  get 'users/logout'
  # get 'users/:id', to: 'users#login', as: 'user_login'

  get 'books/top'
  get 'books/index'
  get 'books/show/:id', to: 'books#show', as: 'book_show'
  get 'books/new', to: 'books#new'
  get 'books/login_owner', to: 'books#login_owner'
  post 'login_owner_check', to: 'books#login_owner_check'
  get 'books/owner'
  post 'books', to: 'books#create'
  delete 'books/delete/:id', to: 'books#destroy', as: 'book_delete'
  get 'books/rend/:id', to: 'books#rend', as: 'book_rend'

  get 'lentals/rent/:id', to: 'lentals#rent', as: 'lentals_rent'
  get 'lentals/return/:id', to: 'lentals#return', as: 'lentals_return'
  get 'lentals/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
