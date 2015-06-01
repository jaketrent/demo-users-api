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
          render json: @user, status: :created, location: @user
        else
          render json: { not_ok: true } # TODO: serialize errors
        end
      end

      def destroy
        @user = User.find(params[:id])
        @user.destroy

        head :no_content
      end

      private

      def user_params
        params.require(:users).permit(:first_name, :last_name, :email)
      end
    end
  end
end
