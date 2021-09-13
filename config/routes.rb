Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # get 'top' => 'homes#top'
  root 'homes#top'
  resources :genres, only: [ :create, :index, :edit, :update]
  resources :cares
end
