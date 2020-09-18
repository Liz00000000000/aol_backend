class EmailsController < ApplicationController
    def index 
        emails = Email.all 
        render json: emails
    end 

    def new
        email = Email.new
    end 

    def create
        email = Email.craete(email_params)
        render json: email.to_json
    end 

    private 

    def email_params
        params.require(:email).permit(:sender_id, :reciever_id, :subject_line, :content, :read )
    end 
end
