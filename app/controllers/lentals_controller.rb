class LentalsController < ApplicationController

  def rent
    @book = Book.find(params[:id])
    @user = User.get_login_user
    if Lental.find_by(user_id: @user.id, book_id: 0) == nil
      redirect_to user_show_path, notice: '貸出数が最大です'
    else
      @lental = Lental.find_by(user_id: @user.id, book_id: 0)
      @lental.book_id = @book.id
      @lental.save
      @book.number -= 1
      @book.save
      redirect_to user_show_path
    end   
  end

  def return
    @book = Book.find(params[:id])
    @user = User.get_login_user
    @lental = Lental.find_by(user_id: @user.id, book_id: @book.id)
    @lental.book_id = 0
    @lental.save
    @book.number += 1
    @book.save
    redirect_to controller: 'users', action: 'show'
  end

end