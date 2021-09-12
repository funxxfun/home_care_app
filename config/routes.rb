Rails.application.routes.draw do
  
  get 'top' => 'homes#top'
  resources :genres, only: [ :create, :index, :edit, :update]
end
