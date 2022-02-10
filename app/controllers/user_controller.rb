class UserController < ApplicationController

    def new(params)
        name = params[:name]
        team = User.new(name: name)
        team.save!
    end

    def update
        team = User.find(params[:id])
        team.name = params[:name]
        team.save!
    end

    def destroy
        team = User.find(params[:id])
        team.destroy
    end

    def index
        teams = User.find_all
    end

    def show
        User.find(params[:id])
    end

    def update_team(team_id)
        user = User.find(params[:id])
        user.team = team_id
        user.save!
    end

end
