class TopicsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @patient = Patient.find(params[:patient_id])
    @topics = @patient.topics
    @topic = Topic.new
    @topic.user_id = current_user.id
    @topic_comment = TopicComment.new
  end

  def create
    @topic = Topic.find_or_initialize_by(content: topic_params[:content])
    @topic = Topic.new(topic_params)
    @topic.user_id = current_user.id
    patient_id = params[:patient_id]
    @topic.patient_id = patient_id
    if @topic.save
      redirect_to patient_topics_path(patient_id)
    else
      @patient = Patient.find(params[:patient_id])
      @topics = @patient.topics
      render :index
    end
  end

  def show
    # @topic = Topic.find(params[:id])
    @patient = Patient.find(params[:patient_id])
    @topic = Topic.find_by(patient_id: @patient.id, id: params[:id] )
    @topic_comment = TopicComment.new
  end

  def edit
    @topic = Topic.find(params[:id])
    @patient = Patient.find(params[:patient_id])
  end

  def update
    @topic = Topic.find(params[:id])
    @patient_id = params[:patient_id]
    if @topic.update(topic_params)
      redirect_to patient_topics_path(@patient_id)
    else
      @patient = Patient.find(params[:patient_id])
      render :edit
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to patient_topics_path(params[:patient_id])
  end

  private

  def topic_params
    params.require(:topic).permit(:image, :content)
  end
end
