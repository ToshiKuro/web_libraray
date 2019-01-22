class CreateLentals < ActiveRecord::Migration[5.2]
  def change
    create_table :lentals do |t|

      t.timestamps
    end
  end
end
