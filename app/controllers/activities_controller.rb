class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities
    end

    def destroy
        activity = Activity.find_by(id: params[:id])
        activity&.destroy
        render json: {}, status: :no_content
    end
end
