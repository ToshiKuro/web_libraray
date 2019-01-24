class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string  :title      
      t.string  :author
      t.string  :genre
      t.string  :date_of_issue
      t.text    :summary
      t.integer :number

      t.timestamps
    end
  end
end
