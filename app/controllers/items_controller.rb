class ItemsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @user = User.find(params[:user_id])
    @item = @user.items.build(item_params)
    authorize @item

    if @item.save
      flash[:notice] = "To-Do Item Successfully Created"
      redirect_to user_path(current_user)
    else
      flash[:error] = "There was an error creating to-do item. Please try again."
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @item = Item.find(params[:id])
    authorize @item

    if @item.destroy
      flash[:notice] = "Item Successfuly Completed"
      redirect_to user_path(current_user)
    else
      flash[:error] = "There was an error removing item. Please try again"
      redirect_to user_path(current_user)
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
