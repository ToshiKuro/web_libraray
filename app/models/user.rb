class User < ApplicationRecord

  scope :get_login_user, -> { find_by(login: true) }

  # def get_rental_books
  #   lentals = Lental.where( 'user_id = ? and book_id > ?', self.id, 0)
  #   n = lentals.count
  #   array = []
  #   if n == 0
  #     @books = 0
  #   else
  #     n -= 1
  #     0.upto(n) do |m|
  #       array.push(lentals.all[m].book_id)
  #     end
  #     @books = Book.find(array)
  #   end    
  # end

end
