class Appointment < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :description, presence: true

  scope :upcoming, -> (date) {where('date > (?)', date )}
  scope :history, -> (date) {where('date < (?)', date )}
  scope :for_user, -> (user_id) { where('user_id = (?)', user_id) }
  
end
