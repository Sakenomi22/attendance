class CreateAdminAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_attendances do |t|
      t.time :regular_start, null: false
      t.time :regular_end, null: false
      t.integer :regular_over, null: false
      t.references :admin, null: false, foreign_key:true
      t.timestamps
    end
  end
end
