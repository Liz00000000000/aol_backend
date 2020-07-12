class AwayMessagesController < ApplicationController
    def index 
        away_messages = AwayMessage.all
        render json: away_messages
    end 
end
