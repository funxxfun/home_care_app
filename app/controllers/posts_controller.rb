class PostsController < ApplicationController

  def index
    # @user = current_user
    @post = Post.new
    @posts = Post.all
    # @post.user_id = current_user.id
    @patient = Patient.find(params[:patient_id])
  end

  def create
    @post = Post.new(post_params)
    # @post.user_id = current_user.id
    @post.patient_id = current_patient.id
    @post.save
    redirect_to patient_posts_path(patient)
  end

  def show
  end

  def destroy
  end
  
  
  private

  def post_params
    params.require(:post).permit(:image, :content)
  end
end
