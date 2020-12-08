class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users, include: [:posts]
    end

    def create
        user = User.find_or_create_by(user_params)
        render json:user, include: [:posts]
    end

    private

    def user_params
        params.require(:user).permit(:username, :email)
    end
end
