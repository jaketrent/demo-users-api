class Api::V1::UsersController < Api::V1::BaseController
  # def index
  #   @users = User.all
  #   render json: JSONAPI::ResourceSerializer.new(UserResource).serialize_to_hash(UserResource.new(@users))
  # end
  #
  # def create
  #   @user = User.new(user_params)
  #
  #   if @user.save
  #     render json: @user, status: :created, location: @user
  #   else
  #     render json: { not_ok: true } # TODO: serialize errors
  #   end
  # end
  #
  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #
  #   head :no_content
  # end
  #
  # private
  #
  def resource_params
    params.require(:data).permit(:first_name, :last_name, :email)
  end
end
