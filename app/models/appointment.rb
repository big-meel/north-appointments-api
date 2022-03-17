class Appointment < ApplicationRecord
  belongs_to :user

  validates :date, presence: true

  scope :upcoming, -> (date) {where('date > (?)', date )}
  scope :history, -> (date) {where('date < (?)', date )}
  scope :find_by_user, -> (user_id) { where('user_id') }
  
end
