class CreateAccts < ActiveRecord::Migration
  def change
    create_table :accts do |t|
      t.string :user_type
      t.datetime :creation_date_time

      t.timestamps null: false
    end
  end
end
