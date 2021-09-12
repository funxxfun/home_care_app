Rails.application.routes.draw do

  # get 'top' => 'homes#top'
  root 'homes#top'
  devise_for :users
  resources :genres, only: [ :create, :index, :edit, :update]
  resources :cares
end
