class TeamsController < ApplicationController
    skip_before_action :verify_authenticity_token

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
