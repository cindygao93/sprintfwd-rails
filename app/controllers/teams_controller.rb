class TeamsController < ApplicationController
    skip_before_action :verify_authenticity_token


#Create/Update/Delete/Index/Show teams
# Create/Update/Delete/Index/Show users
# A user must belong to a team
# Update the team of a user
# Get the users of a specific teamπ

    def create
        name = params[:name]
        @team = Team.create(name: name)
        @team.save
        render json: @team
    end

    def update
        @team = Team.find(params[:id])
        if params[:name]
            @team.name = params[:name]
        end
        @team.save
        render json: @team
    end

    def destroy
        @team = Team.find(params[:id])
        @team.destroy
        render json: @team
    end

    def index
        teams = Team.all
        render json: teams
    end

    def show
        @team = Team.find(params[:id])
        render json: @team
    end

    def get_users
        @team = Team.find(params[:id])
        render json: @team.users
    end

end
