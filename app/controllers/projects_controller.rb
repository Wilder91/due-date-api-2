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
        projects = Project.all 
        if projects 
            render json: projects 
        end
    end
end
