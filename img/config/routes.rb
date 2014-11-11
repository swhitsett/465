Rails.application.routes.draw do

  # resources :tags
  resources :images do
    resources :tags, shallow: true
  end
  devise_for :users
  root 'images#index'


end
