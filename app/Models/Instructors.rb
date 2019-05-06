class Instructor < ActiveRecord::Base #allows user to use any activerecord methods created through relationships
  has_many :swimmers
  has_secure_password

  def swimmers_sort_by_name
    self.swimmers.all.sort_by {|swimmer| category[:name]}
  end
end
