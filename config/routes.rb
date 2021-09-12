Rails.application.routes.draw do

  # get 'top' => 'homes#top'
  root 'homes#top'
  resources :genres, only: [ :create, :index, :edit, :update]
  resources :cares
end
