class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def login
    User.update_all(login: false)
    user = User.find(params[:id])
    user.login = true
    user.save
    redirect_to :root
  end

end
