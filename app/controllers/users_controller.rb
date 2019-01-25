class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.get_login_user
    @lentals = Lental.where( 'user_id = ? and book_id > ?', @user.id, 0)
    n = @lentals.count
    array = []
    if n == 0
      @books = 0
    else
      n -= 1
      0.upto(n) do |m|
        array.push(@lentals.all[m].book_id)
      end
      @books = Book.find(array)
    end
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