class User < ApplicationRecord
     #Relationships
     has_many :contacts

     has_many :friendships
     has_many :friends, :through => :friendships

     has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
     has_many :inverse_friends, :through => :inverse_friendships, :source => :user

     #Password validation
     has_secure_password
 
     #To make sure user is filling out the whole form
     validates :username, :lastname, :firstname, :password_digest, presence: true 
     validates :password_digest, confirmation: true 
     validates :username, length: { in: 6..12 } 
     validates :username, uniqueness: true 

     accepts_nested_attributes_for :contacts
end
