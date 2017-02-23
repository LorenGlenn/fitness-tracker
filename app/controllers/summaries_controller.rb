class SummariesController < ApplicationController
  def index
    @summary = Summary.new
  end

  def create
    @summary = Summary.where(date: params[:date], user_id: current_user.id).first
    if @summary.nil?
      @summary = Summary.create(:user_id => current_user.id, :date => params[:date])
      redirect_to user_summary_path(current_user.id, @summary.id)
    else
      redirect_to user_summary_path(current_user.id, @summary.id)
    end
  end

  def show
    @summary = Summary.find(params[:id])
    @foods = @summary.foods
    @exercises = @summary.exercises
    respond_to  do |format|
        format.html {  }
        format.js
      end
  end

  def edit
  end

  # private
  # def summary_params
  #   params.require(:summary).permit(:user_id, :date)
  # end
end
