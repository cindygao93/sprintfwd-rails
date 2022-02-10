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
        team = Team.find(params[:id])
        team.name = params[:name]
        team.save!
    end

    def destroy
        team = Team.find(params[:id])
        team.destroy
    end

    def index
        teams = Team.all
    end

    def show
        Team.find(params[:id])
    end

    def get_users
        team = Team.find(params[:id])
        team.users
    end

end
