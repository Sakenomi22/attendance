class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         with_options presence: true do
          validates :birthday
          validates :admin_id
          PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
          validates_format_of :password, with: PASSWORD_REGEX
          with_options format: { with: /\A[ぁ-んァ-ン一-龥々ー]+\z/ } do
            validates :family_name
            validates :first_name
          end
        end
  belongs_to :admin
  has_many :user_attendances
end
