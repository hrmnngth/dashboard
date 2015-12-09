class CreateLoginfailures < ActiveRecord::Migration
  def change
    create_table :loginfailures do |t|
      t.integer :count
      t.datetime :timestamp
      t.float :avgtime
      t.string :responsecode
      t.string :result

      t.timestamps null: false
    end
  end
end
