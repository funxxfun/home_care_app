class PatientsController < ApplicationController
  before_action :authenticate_user!

  def new
    @patient = Patient.new
  end

  def index
    @patients = Patient.search(params[:search])
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patients_path, notice: "You have creted genre successfully."
    else
      render :index
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patient_path, notice: "You have updated genre successfully."
    else
      render :edit
    end
  end

  def search
    @patients = Patient.search(params[:search])
  end

  private

  def patient_params
    params.require(:patient).permit(:number, :name, :gender, :birthday, :address, :phone_number, :supporters_phone_number, :supporters_name, :relation, :main_disease, :medical_history, :allergy, :care_level, :information)
  end
end
