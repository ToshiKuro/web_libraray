class UsersController < ApplicationController

  require 'user.rb'

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(login: true)
    @lentals = Lental.where('user_id = ? and book_id > ?', @user.id, 0)
    @lentals == [] ? @books = 0  : @books = Book.find(@lentals.pluck(:book_id))
    # User.find_by(login: true).get_rental_books
  end

  def new
  end

  def create    
    user = User.create(user_params)
    3.times do
      Lental.create(user_id: user.id, book_id: 0)
    end
    redirect_to action: 'login_name'
  end

  def login_name
    @user = params[:name]
  end

  def login
    User.update_all(login: false)
    @user = User.find_by(name: params[:user][:name])
    @user.login = true
    @user.save
    redirect_to controller: 'books', action: 'top'
  end

  def logout
    User.update_all(login: false)
    redirect_to controller: 'books', action: 'top'
  end


  private

  def user_params
    params.require(:user).permit(:name, :address)
  end

end


    # render plain: params[:user].inspect