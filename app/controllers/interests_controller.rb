class InterestsController < ApplicationController
    def index 
        interest = Interest.all 
        render json: interest
    end
end
