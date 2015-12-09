class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.datetime :interval
      t.datetime :avg_wait_time
      t.datetime :max_wait_time
      t.datetime :avg_handle_time
      t.integer :calls_received
      t.integer :calls_answered
      t.integer :return_no_answer
      t.integer :abandoned_calls
      t.float :pct_abandons

      t.timestamps null: false
    end
  end
end
