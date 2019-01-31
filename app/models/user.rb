class User < ApplicationRecord

  require 'users_controller.rb'

  scope :get_login_user, -> { find_by(login: true) }

  def get_rental_books
    # @user = User.find_by(login: true)
    @lentals = Lental.where('user_id = ? and book_id > ?', @user.id, 0)
    @lentals == [] ? @books = 0  : @books = Book.find(@lentals.pluck(:book_id))
  end

end
