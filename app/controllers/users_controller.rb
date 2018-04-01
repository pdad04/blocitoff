class UsersController < ApplicationController

  before_action :verify_user, only: :show

  def show
    @user = User.find(params[:id])
    @item = Item.new
  end

  private

  def verify_user
    user_profile_page = params[:id].to_i

    if !current_user || current_user.id != user_profile_page
      flash[:alert] = 'You must be logged in to do that'

      redirect_to root_path
    end
  end

end
