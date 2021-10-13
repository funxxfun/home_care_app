class TopicCommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    topic = Topic.find(params[:topic_id])
    comment = current_user.topic_comments.new(topic_comment_params)
    comment.topic_id = topic.id
    comment.save!
    redirect_to patient_topic_path(topic.patient_id, topic.id)
  end

  def destroy
    topic = Topic.find(params[:topic_id])
    TopicComment.find(params[:id]).destroy
    redirect_to patient_topic_path(topic.patient_id, topic.id)
  end

  private

  def topic_comment_params
    params.require(:topic_comment).permit(:image, :comment)
  end
end
