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

    def create 
        project = Project.find_or_create_by(name: params[:name])
        project.kind  = params[:kind] 
        project.due_date = params[:date]
        project.save
    end
end
