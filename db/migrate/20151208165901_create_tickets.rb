class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :type
      t.integer :critical
      t.float :critical_age
      t.integer :high
      t.float :high_age
      t.integer :medium
      t.float :medium_age
      t.integer :low
      t.float :low_age

      t.timestamps null: false
    end
  end
end
