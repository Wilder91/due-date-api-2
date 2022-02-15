class UsersController < ApplicationController

    def show 
        #binding.pry
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
        user = User.find_by(email: params[:email])
        if user 
            user_id = user.id
        else 
            #binding.pry
            user = User.new
            user.email = params[:email]
            user.name = params[:name]
            user.save
        end
    end

    def milestones 
        user = User.find_by(id: params[:id])
        milestones = user.milestones
        render json: milestones
    end

    def projects 
        user = User.find_by(id: params[:id])
        projects = user.projects 
        render json: projects
    end

    def index 
        users = User.all
        render json: users
    end

    
end
