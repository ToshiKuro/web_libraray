class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @book = Book.create(book_params)
    # @book = Book.new(params[:book])
    # @book.save   
    # @book = Book.new
    # @book.name = params[:book][:name]
    # @book.author = params[:book][:author]
    # @book.date_of_issue = params[:book][:date_of_issue]
    # @book.summary = params[:book][:summary]
    # @book.save
    redirect_to '/books/index'  
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:name,:author,:date_of_issue,:summary)
  end
end
