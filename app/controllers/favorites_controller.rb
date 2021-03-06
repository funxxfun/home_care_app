class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    post = Post.find(params[:post_id])
    patient = Patient.find(params[:patient_id])
    favorite = current_user.favorites.new(post_id: post.id, patient_id: patient.id)
    favorite.save!
    redirect_to patient_posts_path(patient.id)
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find_by(post_id: post.id)
    favorite.destroy
    redirect_to patient_posts_path(post.patient_id, post.id)
  end

end
