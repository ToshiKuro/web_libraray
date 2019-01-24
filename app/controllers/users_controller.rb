class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(login: true)
    @lentals = Lental.where( 'user_id = ? and book_id > ?', @user.id, 0)
    n = @lentals.count
    array = []
    if n == 0
      @books = 0
    else
      n -= 1
      (0..n).each do |m|
        array.push(@lentals.all[m].book_id)
      end
      @books = Book.find(array)
    end
  end

  def new
  end

  def create    
    @user = User.create(user_params)
    redirect_to '/users/show'
  end

  def login_name
    @user = params[:name]
  end

  def login
    User.update_all(login: false)
    @user = User.find_by(name: params[:user][:name])
    @user.login = true
    @user.save
    redirect_to action: 'show'
  end

  def logout
    User.update_all(login: false)
    redirect_to controller: 'books', action: 'top'
  end


  private

  def user_params
    params.require(:user).permit(:name,:address)
  end

end


    # render plain: params[:user].inspect