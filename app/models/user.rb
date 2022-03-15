class User < ApplicationRecord
  include ActiveModel::SecurePassword
  has_secure_password
  has_many :appointments
  validates :email, presence: true, uniqueness: true
  validates :firstname, presence: true
  validates :lastname, presence: true
end
