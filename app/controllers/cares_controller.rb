class CaresController < ApplicationController
  def new
    @care = Care.new
  end

  def create
    @care = Care.new(care_params)
    @care.user_id = current_user.id
    @care.save
    redirect_to cares_path
  end

  def show
    @care = Care.find(params[:id])
  end

  def index
    @cares = Care.all
  end


  def edit
    @care = Care.find(params[:id])
  end
  def update
    care = Care.find(params[:id])
    redirect_to care_path(care.id)
  end

 

  private
  def care_params
    params.require(:care).permit(:weight,:body_temperature, :blood_pressure, :pulse_rate, :detail, :start_time)
  end


end
