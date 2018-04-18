class User < ActiveRecord::Base
  before_save { self.email = email.downcase } 
  
  has_secure_password
  
  USERNAME_PATTERN = /\A[\w+\-.]+\z/i
  validates :name, presence: true, 
                   length: {maximum: 60},
                   format: {with: USERNAME_PATTERN}
  
  EMAIL_PATTERN = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 60},
                    format: {with: EMAIL_PATTERN},
                    uniqueness: { case_sensitive: false }
                    
  validates :password, length: {minimum: 8}                
  
           
end
