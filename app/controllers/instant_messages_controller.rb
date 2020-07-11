class InstantMessagesController < ApplicationController
    def index 
        instant_messages = InstantMessage.all 
        render json: instant_messages
    end 
end
