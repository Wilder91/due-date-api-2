class UsersController < ApplicationController

    def show 
        user = User.find_by(id: params[:id])
        if user 
            render json: user
        else 
           render json: {message: "We Couldn't Find a User With Those Credentials"}
        end 
    end 

    def login 
        user = user.find_by(email: params[:email])
    end
end
