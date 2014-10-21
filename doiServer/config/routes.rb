Rails.application.routes.draw do
  resources :doi_tables
  

  root 'doi_tables#index'
end
