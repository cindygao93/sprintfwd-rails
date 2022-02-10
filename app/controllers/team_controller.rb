class TeamController < ApplicationController


#Create/Update/Delete/Index/Show teams
# Create/Update/Delete/Index/Show users
# A user must belong to a team
# Update the team of a user
# Get the users of a specific team

    def new(params)
        name = params[:name]
        team = Team.new(name: name)
        team.save!
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
        teams = Teams.find_all
    end

    def show
        Team.find(params[:id])
    end

end
