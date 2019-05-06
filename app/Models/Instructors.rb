class Instructor < ActiveRecord::Base #allows user to use any activerecord methods created through relationships
  has_many :swimmers
  has_secure_password
end
