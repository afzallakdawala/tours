class User < ActiveRecord::Base

  validates_presence_of :name, :address, :country, :city, :tel, :mobile, :email_id, :password
  validates_uniqueness_of :name, :case_sensitive => false
  validates_uniqueness_of :email_id, :case_sensitive => false

end
