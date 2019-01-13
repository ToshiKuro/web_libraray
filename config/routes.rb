Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'

  get 'books/index'
  get 'books/show'
  get 'books/new'
  post 'books' => 'books#create'
  get 'books/update'
  get 'books/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
