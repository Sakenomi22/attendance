class AdminAttendance < ApplicationRecord
  with_options presence: true do
    validates :date
    validates :regular_start
    validates :regular_end
    validates :regular_over
  end
  belongs_to :admin
end
