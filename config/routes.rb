Rails.application.routes.draw do
  root to: 'books#index'

  get 'users/index'
  get 'users/show'
  get 'users/new'

  get 'books/index'
  get 'books/:id', to: 'books#show', as: 'book_show'
  get 'books/new'
  post 'books' => 'books#create'
  get 'books/update'
  get 'books/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
