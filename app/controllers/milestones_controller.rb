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
        milestones = Milestone.all 
        render json: milestones
    end

    def create 
        #binding.pry
        milestone = Milestone.new 
        milestone.name = params[:name]
        milestone.description = params[:description]
        milestone.lead_time = params[:lead_time]
        milestone.project_id = params[:project_id]
        #binding.pry
        milestone.save
        render json: milestone
    end

    def project_index 
        #binding.pry
        milestones = Milestone.where(project_id: params[:id])
        render json: milestones
    end
end
