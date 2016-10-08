class Admin::ToursController < Admin::ApplicationController

	def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      flash[:notice] = "Tour has been created."
      redirect_to @tour
    else
      flash.now[:alert] = "Tour has not been created."
      render "new"
    end
  end

  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy
    flash[:notice] = "Tour has been deleted."
    redirect_to tours_path
  end

  private
  
	  def tour_params
	    params.require(:tour).permit(:name, :description, :price, :latitude, :longitude)
	  end

end