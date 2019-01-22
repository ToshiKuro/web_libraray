class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show    
    @user = User.find_by(login: true)
    if @user.rend1 > 0
      @book1 = Book.find(@user.rend1)
    end
    if @user.rend1 > 0
      @book2 = Book.find(@user.rend2)
    end
    if @user.rend1 > 0
      @book3 = Book.find(@user.rend3)
    end
    # @books = Book.where(user_id: @user.id)
  end

  def new
    render plain: params[:user].inspect
  end

  # def login
  #   User.update_all(login: '')
  #   @user = User.find(params[:id])
  #   @user.login = true
  #   @user.save
  #   redirect_to :root
  # end

  def login_name
    # @user = params[:name]
  end

  def login
    # render plain: params[:user].inspect
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

end
