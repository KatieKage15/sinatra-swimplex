class Instructor < ActiveRecord::Base
  has_many :swimmers
  has_secure_password
end
