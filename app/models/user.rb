class User < ApplicationRecord
    
     #Relationships
     has_many :contacts
     # has_many :friend_requests, dependent: :destroy
     # has_many :pending_friends, through: :friend_requests, source: :friend

     # has_many :friendships, dependent: :destroy
     # has_many :friends, through: :friendships

     # def remove_friend(friend)
     #      current_user.friends.destroy(friend)
     # end

 

     #Password validation
     has_secure_password
 
     #To make sure user is filling out the whole form
     validates :username, :lastname, :firstname, :password_digest, presence: true 
     validates :password_digest, confirmation: true 
     validates :username, length: { in: 6..12 } 
     validates :username, uniqueness: true 
 
end
