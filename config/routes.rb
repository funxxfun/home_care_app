Rails.application.routes.draw do

  get 'homes/about'
  get 'users/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'homes#top'
  # get 'top' => 'homes#top'
  resources :genres, only: [ :create, :index, :edit, :update]
  resources :patients, only: [ :new, :create, :index, :show, :edit, :update] do
    resources :cares
    resources :posts do
      resources :post_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
  end
  resources :users, only: [:show, :edit, :update]
  get 'search' => 'patients#search'

end
