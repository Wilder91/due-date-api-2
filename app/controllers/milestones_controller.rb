class MilestonesController < ApplicationController
    def show 
        milestone = Milestone.find_by(id: params[:id])
        if milestone 
            render json: milestone
        else 
            render json: "Nope!"
        end 
    end

    def index 
        milestones = Milestone.all.sort { |a,b| a.due_date <=> b.due_date } 
        render json: milestones
    end

    def create 
        milestone = Milestone.new 
        milestone.name = params[:name]
        milestone.description = params[:description]
        milestone.project_id = params[:project_id]
        milestone.due_date = milestone.project.due_date - params[:due_date].to_i
        #binding.pry
        milestone.save
        milestones = Milestone.all
        render json: milestones
    end

    def project_index 
        milestones = Milestone.where(project_id: params[:id])
        project_milestones = milestones.sort { |a,b| a.due_date <=> b.due_date } 
        #binding.pry
        render json: project_milestones
    end

    def user_milestones 
        user = User.find_by(id: params[:id])
        milestones = user.milestones.sort { |a,b| a.due_date <=> b.due_date } 
        #binding.pry
        if milestones != []
            render json: milestones
        else 
            render json: {status: "error", code: 3000, message: "Can't find purchases without start and end date"}
        end
    end

    def delete 
        #binding.pry
        milestone = Milestone.find_by(id: params[:id])
        milestone.destroy

    end

    private 

    def milestone_params 

        params.require(:milestone).permit(:name, :description, :project_id)
    end
end
