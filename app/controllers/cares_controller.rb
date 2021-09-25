class CaresController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @care = Care.new
    @patient = Patient.find(params[:patient_id])
  end

  def create
    @care = Care.new(care_params)
    @care.user_id = current_user.id
    @patient = Patient.find(params[:patient_id])
    @care.patient = @patient
    if @care.save
      redirect_to patient_care_path(patient_id: @patient.id, id: @care.id)
    else
      render :new
    end
  end

  def show
    @care = Care.find(params[:id])
    @patient = Patient.find(params[:patient_id])
  end

  def index
    @patient = Patient.find(params[:patient_id])
    @cares = @patient.cares
    # 配列用の空の箱を準備
    @cares_graph = []
    # careをeachで順にとりだす
    @cares.each do |care|
    # ( )の中身を[ ]内の１個１個のデータにしてからの[]の中にpushしてやる
      @cares_graph.push([care.start_time.strftime("%Y-%m-%d"), care.weight.to_s])
    end
    # モデルにchart_dateを定義したらこれでもいけそう
    # @cares_graph = Care.chart_date
    @user = current_user
  end

  def edit
    @care = Care.find(params[:id])
    @patient = Patient.find(params[:patient_id])
  end
  
  def update
    @care = Care.find(params[:id])
    @patient = Patient.find(params[:patient_id])
    if @care.update(care_params)
      redirect_to patient_care_path(patient_id: @patient.id, id: @care.id)
    else
      render :edit
    end
  end

  def destroy
    @care = Care.find(params[:id])
    @care.destroy
    redirect_to patient_cares_path(params[:patient_id]), notice: '記録を削除しました'
  end

  private
  
  def care_params
    params.require(:care).permit(:weight,:body_temperature, :blood_pressure, :pulse_rate, :detail, :start_time)
  end
end