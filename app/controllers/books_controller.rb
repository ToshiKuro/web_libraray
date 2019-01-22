class BooksController < ApplicationController

  def top
    @books = Book.all
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.create(book_params)
    redirect_to '/books/index'  
  end

  def update
  end

  def destroy
  end

  def rend
    # render plain: params[:id].inspect
    @book = Book.find(params[:id])
    @user = User.find_by(login: true)    
    if @user.rend1 == 0
      @user.rend1 = @book.id
      @book.number -= 1
      @book.save
      render '/users/show'
    elsif @user.rend2 == 0
      @user.rend2 = @book.id
      @book.number -= 1
      @book.save
      render '/users/show'
    elsif @user.rend3 == 0
      @user.rend3 = @book.id
      @book.number -= 1
      @book.save
      render '/users/show'
    else
      # redirect_to '/users/show'
      redirect_to '/users/show', alert: '貸出数が最大です'
    end
    # render '/users/show'    
  end

  private

  def book_params
    params.require(:book).permit(:title,:author,:date_of_issue,:summary)
  end
  
end
