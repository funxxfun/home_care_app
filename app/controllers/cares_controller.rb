class CaresController < ApplicationController
  def new
    @care = Care.new
    @patient = Patient.find(params[:patient_id])
  end

  def create
    @care = Care.new(care_params)
    @care.user_id = current_user.id
    # @cares = patient.find(params[:id])
    @care.save
    redirect_to patient_care_path[patient.id, care.id]
  end

  def show
    @care = Care.find(params[:id])
  end

  def index
    @patient = Patient.find(params[:patient_id])
    @cares = Care.all

  end


  def edit
    @care = Care.find(params[:id])
    @patient = Patient.find(params[:patient_id])
  end
  def update
    care = Care.find(params[:id])
    redirect_to patient_care_path(care.id)
  end


  def destroy
    @care = Care.find(params[:id])
    @bcare.destroy
    redirect_to patient_cares_path(patient.id)
  end



  private
  def care_params
    params.require(:care).permit(:weight,:body_temperature, :blood_pressure, :pulse_rate, :detail, :start_time)
  end


end
