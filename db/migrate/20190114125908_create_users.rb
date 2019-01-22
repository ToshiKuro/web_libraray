class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :address
      t.boolean :login
      t.integer :rend1
      t.integer :rend2
      t.integer :rend3

      t.timestamps
    end
  end
end
