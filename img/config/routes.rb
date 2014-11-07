Rails.application.routes.draw do
  devise_for :users
  resources :images
  resources :tags, shallow: true
  resources :access, shallow: true

  root 'images#index'
end
