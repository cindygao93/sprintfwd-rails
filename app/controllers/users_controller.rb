class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token


    def create
        name = params[:name]
        team = params[:team_id].to_i
        @user = User.create({name: name, team: team})
        @user.save
        render json: @user
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
        teams = User.all
    end

    def show
        User.find(params[:id])
    end

    def update_team(team_id)
        user = User.find(params[:id])
        user.team = params[:team_id]
        user.save!
    end

end
