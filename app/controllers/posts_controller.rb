class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @patient = Patient.find(params[:patient_id])
    @posts = @patient.posts
    @post = Post.new
    @post.user_id = current_user.id
    @post_comment = PostComment.new
  end

  def create
    @post = Post.find_or_initialize_by(content: post_params[:content])
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    patient_id = params[:patient_id]
    @post.patient_id = patient_id
    if @post.save
      redirect_to patient_posts_path(patient_id)
    else
      @patient = Patient.find(params[:patient_id])
      @posts = @patient.posts
      render :index
    end
  end
  
  def show
    # @post = Post.find(params[:id])
    @patient = Patient.find(params[:patient_id])
    @post = Post.find_by(patient_id: @patient.id, id: params[:id] )
    @post_comment = PostComment.new
  end

  def edit
    @post = Post.find(params[:id])
    @patient = Patient.find(params[:patient_id])
  end
  
  def update
    @post = Post.find(params[:id])
    @patient_id = params[:patient_id]
    if @post.update(post_params)
      redirect_to patient_posts_path(@patient_id)
    else
      @patient = Patient.find(params[:patient_id])
      render :edit
    end
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
