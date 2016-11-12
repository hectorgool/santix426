class ToursController < ApplicationController

  def index
    #@tours = Tour.all
    #@tours = Tour.last(12).reverse  
    @tours = Tour.paginate(:page => params[:page], :per_page => 9) 
  end

  def show
    @tour = Tour.find(params[:id])
    #rescue ActiveRecord::RecordNotFound
    #flash[:alert] = "The tour you were looking for could not be found."
    #redirect_to tours_path

    @reservations = Reservation.new
    #@tour.reservations.build

    respond_to do |format|
      format.html
      format.json { render json: @tour }
    end  
  end

end
