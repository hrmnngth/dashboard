class CreateNoticestats < ActiveRecord::Migration
  def change
    create_table :noticestats do |t|
      t.string :notice_template_name
      t.string :notice_template_id
      t.integer :notices_triggered
      t.integer :esb_pickedup_count
      t.integer :esb_print_count

      t.timestamps null: false
    end
  end
end
