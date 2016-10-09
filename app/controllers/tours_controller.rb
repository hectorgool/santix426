class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The tour you were looking for could not be found."
    redirect_to tours_path  
  end

end
