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
end
