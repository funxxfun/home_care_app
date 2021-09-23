class PostsController < ApplicationController

  def index
    @user = current_user
    # @posts = Post.all
    @patient = Patient.find(params[:patient_id])
    @posts = @patient.posts
    @post = Post.new
    @post.user_id = current_user.id
  end

  def create
    @post = Post.find_or_initialize_by(content: post_params[:content])
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    patient_id = params[:patient_id]
    @post.patient_id = patient_id
    @post.save!
    redirect_to patient_posts_path(patient_id)
  end


  def edit
    @post = Post.find(params[:id])
    @patient = Patient.find(params[:patient_id])
  end
  def update
    post = Post.find(params[:id])
    patient_id = params[:patient_id]
    post.update!(post_params)
    redirect_to patient_posts_path(patient_id)
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to patient_posts_path(params[:patient_id])
  end


  private

  def post_params
    params.require(:post).permit(:image, :content)
  end
end
