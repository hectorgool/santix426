class ToursController < ApplicationController

  before_action :set_tour, only: [:show, :edit, :update, :destroy]

  def set_tour
    @tour = Tour.find(params[:id])
  end

  def index
    @tours = Tour.all
  end

  #def show
    #@tour = Tour.find(params[:id])
  #end

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

  #def edit
    #@tour = Tour.find(params[:id])
  #end

  def update
    #@tour = Tour.find(params[:id])
    if @tour.update(tour_params)
      flash[:notice] = "Tour has been updated."
      redirect_to @tour
    else
      flash.now[:alert] = "Tour has not been updated."
      render "edit"
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
    params.require(:tour).permit(:name, :description, :price)
  end

end
