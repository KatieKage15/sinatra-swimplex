class Instructor < ActiveRecord::Base #allows user to use any activerecord methods created through relationships
  has_many :swimmers
  has_secure_password #bcrypt-authenticate
  validates :username, presence: true
  #^macro!    ^attribute
end
