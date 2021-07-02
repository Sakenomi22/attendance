class CreateUserAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :user_attendances do |t|
      t.date :date, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.integer :over_time, null: false
      t.references :user, null: false, foreign_key:true
      t.timestamps
    end
  end
end
