class SummariesController < ApplicationController
  def index
    @summaries = Summary.all
    @summary = Summary.new
  end

  def create
    @summary = Summary.where(date: params[:date]).first
    if @summary.nil?
      @summary = Summary.create(:user_id => current_user.id, :date => params[:date])
      render :show
    else
      redirect_to user_summary_path(current_user.id, @summary.id)
    end
  end

  def show
    @summary = Summary.find(params[:id])
    @foods = @summary.foods
    @exercises = @summary.exercises
  end

  def edit
  end

  # private
  # def summary_params
  #   params.require(:summary).permit(:user_id, :date)
  # end
end
