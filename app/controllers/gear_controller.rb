class GearController < ApplicationController
  before_action :is_authenticated?

  def edit
    @products = Product.all.entries
  end

  def update
    if current_user.update_attributes( user_params )
      redirect_to gear_form_url, notice: "Your gear has been updated!"
    else
      flash.now[:alert] = "Whoops! Can't update your gear!"
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit( product_ids: [] )
  end

end
