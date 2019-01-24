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
  end

  def login_owner
  end

  def login_owner_check
    if params[:owner][:name] == '管理者' && params[:owner][:password] == '123456'
      redirect_to action: 'owner'
    else
      redirect_to action: 'login_owner'
    end 
  end

  def owner
    @books = Book.all    
  end

  def create
    @book = Book.create(book_params)
    redirect_to '/books/owner'
  end

  def update
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books/owner'
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :date_of_issue , :number, :summary)
  end
  
end