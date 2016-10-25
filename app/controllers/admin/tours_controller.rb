class Admin::ToursController < Admin::ApplicationController

  before_action :set_tour, only: [:edit, :update, :destroy]

	def new
    @tour = Tour.new
    3.times { @tour.attachments.build }
  end

  def create
    @tour = Tour.new(tour_params)
    @tour.user = current_user
    if @tour.save
      flash[:notice] = "Tour has been created."
      redirect_to @tour
    else
      flash.now[:alert] = "Tour has not been created."
      render "new"
    end
  end

  def edit
    @tour.attachments.build
  end

  def update
    if @tour.update(tour_params)
      flash[:notice] = "Tour has been updated."
      redirect_to @tour
    else
      flash.now[:alert] = "Tour has not been updated."
      render "edit"
    end
  end

  def destroy
    @tour.destroy
    flash[:notice] = "Tour has been deleted."
    redirect_to tours_path
  end

  private

    def set_tour
      @tour = Tour.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The tour you were looking for could not be found."
      redirect_to tours_path
    end 
  
	  def tour_params
      params.require(:tour).permit(:name, :description, :price, :latitude, :longitude, attachments_attributes: [:file, :file_cache])    
    end

end