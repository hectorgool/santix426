class Admin::ToursController < Admin::ApplicationController

  before_action :set_tour, only: [:edit, :update, :destroy]

	def new
    @tour = Tour.new
    #3.times { @tour.attachments.build }
    @tour.attachments.build
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
    respond_to do |format|
      if @tour.update(tour_params)
        #flash[:notice] = "Tour has been updated."
        #redirect_to @tour
        format.html { redirect_to @tour, notice: 'Tour was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour }
      else
        #flash.now[:alert] = "Tour has not been updated."
        #render "edit"
        format.html { render :edit }
        format.json { render json: @tour.errors, status: :unprocessable_entity }

      end
    end
  end

  def destroy
    #@tour.destroy
    #flash[:notice] = "Tour has been deleted."
    #redirect_to tours_path
    @tour.destroy
      respond_to do |format|
      format.html { redirect_to tours_url, notice: 'Tour was successfully destroyed.' }
      format.json { head :no_content }
    end
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