class Admins::UsersController < ApplicationController
  before_action :authenticate_admin!
  layout "admins"

  	def index
      @users = User.page(params[:page]).reverse_order
      userx = User.search(params[:search])
      @users_search = userx.page(params[:page]).reverse_order
    end

    def show
    	@user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
  		@user.destinations.build
      # unless admin_signed_in?
      #   if @users.id != current_user
      #     redirect_to new_user_session_path
      #   end
      # end
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to edit_admins_user_path(@user)
    end

    def search
      @users = User.search(params[:search])
      redirect_to admins_users_path
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to admins_users_path
    end

    private
      def user_params
          params.require(:user)
  					.permit(
  						:name_family_name,
  						:name_name,
  						:furigana_family_name,
  						:furigana_name,
  						:postal_code,
  						:address,
  						:phone_number,
  						:email,
  						destinations_attributes: [
  							:postal_code,
  							:destination,
  							:id,
  							:_destroy
  							]
  					)
      end
end
