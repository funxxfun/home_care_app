class PostsController < ApplicationController

  def index
    @user = current_user
    @posts = Post.all
    @post = Post.new
    @post.user_id = current_user.id
    # @patient = Patient.find(params[:patient_id])
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    # @post.patient_id = current_patient.id
    @post.save!
    # redirect_to patient_posts_path(patient)
    redirect_to posts_path(@post.id)
  end
  
  


  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path(post.id)
  end
  
  
  private

  def post_params
    params.require(:post).permit(:image, :content)
  end
end
