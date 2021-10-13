class PostCommentsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    post = Post.find(params[:post_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.post_id = post.id
    comment.save!
    redirect_to patient_post_path(post.patient_id, post.id)
  end

  def destroy
    post = Post.find(params[:post_id])
    PostComment.find(params[:id]).destroy
    redirect_to patient_post_path(post.patient_id, post.id)
  end
  
  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
