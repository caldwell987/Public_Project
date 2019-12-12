class User < ApplicationRecord

     has_secure_password

     validates_presence_of :username
     validates_uniqueness_of :username

     #Relationships
     has_many :contacts
 
     #To make sure user is filling out the whole form
     # validates :username, :lastname, :firstname, :password_digest, presence: true 
     # validates :password_digest, confirmation: true 
     # validates :username, length: { in: 6..12 } 
     # validates :username, uniqueness: true 

end
