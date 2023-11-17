class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def show
        user = User.find(params[:id])
        render json: {user: user}
    end

    def record_not_found
        render json: {error: "User not found"}, status: :not_found
    end
end
