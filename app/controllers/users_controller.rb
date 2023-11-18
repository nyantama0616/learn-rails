class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        users = User.all
        result = users.as_json(only: [:id, :user_id, :password])
        render json: {users: result}
    end

    def show
        user = User.find(params[:id])
        render json: {user: user}
    end

    def record_not_found
        render json: {error: "User not found"}, status: :not_found
    end
end
