class UserAttendance < ApplicationRecord
  with_options presence: true do
    validates :date
    validates :start_time
    validates :end_time
    validates :over_time
  end
  belongs_to :user
end
