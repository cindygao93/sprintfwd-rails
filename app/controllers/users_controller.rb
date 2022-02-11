class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token


    def create
        name = params[:name]
        team_id = params[:team_id].to_i
        @user = User.create({name: name, team_id: team_id})
        @user.save
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        if params[:name].present?
            @user.name = params[:name]
        end
        if params[:team_id].present?
            @user.team_id = params[:team_id]
        end
        @user.save
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: @user
    end

    def index
        users = User.all
        render json: users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def update_team(team_id)
        user = User.find(params[:id])
        user.team = params[:team_id]
        user.save!
    end

end
