module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        render json: @users
      end

      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created, location: @book
        else
          render json: { not_ok: true } # TODO: serialize errors
        end
      end

      private

      def user_params
        params.require(:users).permit(:first_name, :last_name, :email)
      end
    end
  end
end
