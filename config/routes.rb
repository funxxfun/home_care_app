Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'homes#top'
  # get 'top' => 'homes#top'
  resources :genres, only: [ :create, :index, :edit, :update]
  resources :patients, only: [ :new, :create, :index, :show, :edit, :update] do
  # patientにネストさせる
    resources :cares
    resources :posts, only: [:create, :index, :edit, :update, :show, :destroy]
  end
  get 'search' => 'patients#search'


end
