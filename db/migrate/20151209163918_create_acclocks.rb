class CreateAcclocks < ActiveRecord::Migration
  def change
    create_table :acclocks do |t|
      t.string :app_transactions
      t.integer :user_login_counts
      t.datetime :timestamp

      t.timestamps null: false
    end
  end
end
