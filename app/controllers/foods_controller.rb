class FoodsController < ApplicationController

  def new
    @summary = Summary.find(params[:summary_id])
    @food = Food.new
  end

  def create
    @summary = Summary.find(params[:summary_id])
    @food = @summary.foods.create(food_params)
    @foods = @summary.foods.all
    respond_to  do |format|
        format.html { redirect_to user_summary_path(current_user.id, @summary.id) }
        format.js
      end
  end

  private
  def food_params
    params.require(:food).permit(:name, :calorie_intake, :summary_id)
  end
end
