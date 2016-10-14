class ToursController < ApplicationController

  def index
    #@tours = Tour.all
    @tours = Tour.last(12).reverse   
  end

  def show
    @tour = Tour.find(params[:id])
    #rescue ActiveRecord::RecordNotFound
    #flash[:alert] = "The tour you were looking for could not be found."
    #redirect_to tours_path
    respond_to do |format|
      format.html
      format.json { render json: @tour }
    end  
  end

end
