class PostsController < ApplicationController

  def index
    @user = current_user
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    # @post.patient_id = current_patient.id
    @post.save
    redirect_to posts_path
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
