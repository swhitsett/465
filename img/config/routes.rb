Rails.application.routes.draw do


  # resources :tags
  resources :images do
    resources :tags, shallow: true
    resources :accesses, shallow: true
  end
  devise_for :users
  root 'images#index'
  get 'query',to: 'image#imgSearch'

end
