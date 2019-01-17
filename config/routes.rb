Rails.application.routes.draw do
  root to: 'books#index'

  get 'users/index'
  get 'users/show', to: 'users#show', as: 'user_show'
  get 'users/new'
  get 'users/:id', to: 'users#login', as: 'user_login'

  get 'books/top'
  get 'books/index'
  get 'books/:id', to: 'books#show', as: 'book_show'
  post 'books' => 'books#new'
  get 'books/update'
  get 'books/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
