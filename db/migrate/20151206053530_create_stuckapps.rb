class CreateStuckapps < ActiveRecord::Migration
  def change
    create_table :stuckapps do |t|
      t.integer :missing
      t.integer :inedit
      t.integer :successful
      t.integer :admin
      t.integer :noevidence

      t.timestamps null: false
    end
  end
end
