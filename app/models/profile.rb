class Profile < ApplicationRecord

    def to_param
        username
    end
      
end
