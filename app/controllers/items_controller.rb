class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to user_path(current_user.id)
    else
      flash[:alert] = "There was an error saving the todo. Please try again."
      redirect_to user_path(current_user.id)
    end
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "To-Do removed successfully"
    else
      flash[:alert] = "To-Do was not removed. Please try again."
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
