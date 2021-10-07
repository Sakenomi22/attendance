class CreateUserAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :user_attendances do |t|
      t.time :start_time
      t.time :end_time
      t.references :user, null: false, foreign_key:true
      t.timestamps
    end
  end
end