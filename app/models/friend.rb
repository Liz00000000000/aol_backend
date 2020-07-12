class Friend < ApplicationRecord
    validate :friend_1_not_equal_friend_2

    def friend_1_not_equal_friend_2
        if friend_1 == friend_2 
            errors.add(:friend_2, 'cant be the same as friend 1')
        end 
    end 
end
