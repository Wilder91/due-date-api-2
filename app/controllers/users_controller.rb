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

    def create 
        #binding.pry
        user = User.find_or_create_by(email: params[:email])
        user.name = params[:name]
        user.password = params[:password]
        #binding.pry
        user.save
    end
end
