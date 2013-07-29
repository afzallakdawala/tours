class User < ActiveRecord::Base

  validates_presence_of :name, :address, :country, :city, :tel, :mobile, :email_id
  validates :password, :on => :create, :confirmation => true, :length => { :minimum => 6}
  validates_format_of :email_id, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_uniqueness_of :name, :case_sensitive => false
  validates_uniqueness_of :email_id, :case_sensitive => false

  before_save :encrypt_password

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def self.authenticate(email, password)
    user = find_by_email_id(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)      
      user      
    else
      nil
    end
  end  


end
