class ProjectsController < ApplicationController

    def show 
        project = Project.find_by(id: params[:id])
        if project 
            render json: project
        else 
           render json:  "We Couldn't Find A Project With Those Credentials"
        end 
    end 

    def index 
        #binding.pry
        projects = Project.all 
        if projects 
            render json: projects 
        end
    end

    def create 
        project = Project.find_or_create_by(name: params[:name])
        user = User.find_by(email: params[:user])
        project.kind  = params[:kind] 
        project.due_date = params[:date]
        project.user_id = user.id
        #binding.pry
        project.save
    end

    def delete 
        #binding.pry
        project = Project.find_by(id: params[:id])
        #binding.pry
        project.destroy

    end
end
