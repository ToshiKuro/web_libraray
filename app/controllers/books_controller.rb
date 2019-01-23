class BooksController < ApplicationController

  def top
    @books = Book.all
  end

  def index
    @books = Book.all
  end

  def show
    # @books = Book.where(id: @lentals.book_id)
  end

  def new
    @book = Book.create(book_params)
    redirect_to '/books/index'  
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title,:author,:date_of_issue,:summary)
  end
  
end