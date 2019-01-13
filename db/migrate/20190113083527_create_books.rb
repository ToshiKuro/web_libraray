class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :date_of_issue
      t.text :summary

      t.timestamps
    end
  end
end
