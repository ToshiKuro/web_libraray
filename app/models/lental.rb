class Lental < ApplicationRecord

  def book
    Book.find(self.book_id)
  end

end
