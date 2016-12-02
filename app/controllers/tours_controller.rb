class ToursController < ApplicationController

  def index
    #@tours = Tour.paginate(:page => params[:page], :per_page => 9)
    #@tours = Tour.page(9)
    @tours = Tour.order(:name).page params[:page]
  end

  def show
    @tour = Tour.find(params[:id])
    @reservation = @tour.reservations.build
    @comment = @tour.comments.build

    respond_to do |format|
      format.html
      format.json { render json: @tour }
    end
  end

end
