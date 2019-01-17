class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show    
    @user = User.find_by(login: true)
    @books = Book.where(user_id: @user.id)
  end

  def new
  end

  def login
    User.update_all(login: '')
    @user = User.find(params[:id])
    @user.login = true
    @user.save
    redirect_to :root
  end

end


  def create
    @book = Book.create(book_params)
    redirect_to '/books/index'  
  end
