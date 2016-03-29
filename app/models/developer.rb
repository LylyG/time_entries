class Developer < ActiveRecord::Base
  # has_secure_password
  validates :email, uniqueness: true
  has_many :timentries
end
