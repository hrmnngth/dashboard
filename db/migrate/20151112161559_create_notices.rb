class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :template_name
      t.string :template_id
      t.string :communication_type
      t.integer :count

      t.timestamps null: false
    end
  end
end
