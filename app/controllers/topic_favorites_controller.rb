class TopicFavoritesController < ApplicationController
   before_action :authenticate_user!

  def create
    topic = Topic.find(params[:topic_id])
    patient = Patient.find(params[:patient_id])
    favorite = current_user.favorites.new(topic_id: topic.id, patient_id: patient.id)
    favorite.save!
    redirect_to patient_topics_path(patient.id)
  end

  def destroy
    topic = Topic.find(params[:topic_id])
    favorite = current_user.favorites.find_by(topic_id: topic.id)
    favorite.destroy
    redirect_to patient_topics_path(topic.patient_id, topic.id)
  end

end
