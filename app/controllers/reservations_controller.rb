class ReservationsController < ApplicationController

  before_action :set_tour
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = Reservation.last(12).reverse
  end

  def new
    @reservation = Reservation.new
    #@reservation.reservations.build
  end

  def show
    @reservation = Reservation.find(params[:id])
    #rescue ActiveRecord::RecordNotFound
    #flash[:alert] = "The reservation you were looking for could not be found."
    #redirect_to reservations_path
    respond_to do |format|
      format.html
      format.json { render json: @reservation }
    end  
  end

  def create
    #@reservation = Reservation.new(reservation_params)
    @reservation      = @tour.reservations.build(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      flash[:notice] = "Reservation has been created."
      #redirect_to @reservation
      redirect_to [@tour, @reservation]
    else
      flash.now[:alert] = "Reservation has not been created."
      render "new"
    end
  end

  def edit
    @reservation.attachments.build
  end

  def update
    if @reservation.update(reservation_params)
      flash[:notice] = "Reservation has been updated."
      redirect_to @reservation
    else
      flash.now[:alert] = "Reservation has not been updated."
      render "edit"
    end
  end

  def destroy
    @reservation.destroy
    flash[:notice] = "Reservation has been deleted."
    redirect_to reservations_path
  end

  private

    def set_reservation
      #@reservation = Reservation.find(params[:id])
      @reservation = @tour.reservations.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The reservation you were looking for could not be found."
      redirect_to reservations_path
    end 
  
    def reservation_params
      params.require(:reservation).permit(:customers, :date, :schedule)    
    end

end
