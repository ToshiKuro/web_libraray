class LentalsController < ApplicationController

  def rent
    @book = Book.find(params[:id])
    @user = User.find_by(login: true)
    if 
      Lental.find_by(user_id: @user.id, book_id: 0) == nil
      redirect_to controller: 'users', action: 'show', notice: '貸出数が最大です'
    else
      @lental = Lental.find_by(user_id: @user.id, book_id: 0)
      @lental.book_id = @book.id
      @lental.save
      @book.number -= 1
      @book.save
      redirect_to controller: 'users', action: 'show'
    end   
  end

  def return
    @book = Book.find(params[:id])
    @user = User.find_by(login: true)
    @lental = Lental.find_by(user_id: @user.id, book_id: @book.id)
    @lental.book_id = 0
    @lental.save
    @book.number += 1
    @book.save
    redirect_to controller: 'users', action: 'show'
  end

end