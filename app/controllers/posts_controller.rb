class PostsController < ApplicationController

  def index
    @user = current_user
    @posts = Post.all
    @patient = Patient.find(params[:patient_id])
    @post = Post.new
    @post.user_id = current_user.id
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    patient_id = params[:patient_id]
    @post.patient_id = patient_id
    @post.save!
    redirect_to patient_posts_path(patient_id)
  end
  
  
  


  def destroy
    @post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path(post.id)
  end


  private

  def post_params
    params.require(:post).permit(:image, :content)
  end
end
