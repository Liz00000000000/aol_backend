class Email < ApplicationRecord
    validate :sender_different_than_reciever

    def sender_different_than_reciever
        if reciever_id == sender_id 
            errors.add(:reciever_id, 'cant be the same as reciever')
        end 
    end 
end
