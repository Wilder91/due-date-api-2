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
        projects = Project.all.sort { |a,b| a.due_date <=> b.due_date } 
        if projects 
            render json: projects 
        end
    end
   
    def create 
        project = Project.create(project_params)
        #binding.pry
    end

    def delete 
        project = Project.find_by(id: params[:id])
        project.milestones.destroy
        project.destroy

    end

    def update 
        project = Project.find_by(id: params[:id])
        project.update(name: params[:project][:name], kind: params[:project][:kind], due_date: params[:project][:due_date])
    end

    def user_projects 
        user = User.find_by(id: params[:id])
    
        projects = user.projects.all.sort { |a,b| a.due_date <=> b.due_date } 
        render json: projects
    end

    private 

    def project_params 
        params.require(:project).permit(:name, :kind, :due_date, :user_id)
 
    end
end
